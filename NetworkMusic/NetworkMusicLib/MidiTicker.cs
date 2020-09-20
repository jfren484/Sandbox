using System;
using System.Timers;
using System.Threading;
using Timer = System.Timers.Timer;

namespace Fryz.Apps.NetworkMusic.NetworkMusicLib
{
	/// <summary>
	/// Generates Midi Ticks.
	/// </summary>
	public class MidiTicker
	{
		#region Constants

		private const double IntervalTempoModifier	= 1.0 / 800000;

		#endregion

		#region Member Variables

		private Timer		_timer					= null;
		private long		_clockTicks			= 0;

		private ushort	_ppqn						= 0;
		private uint		_tempo					= 500000;

		private ulong		_ticks					= 0;
		private double	_pulses					= 0;
		private double	_pulsesPerClock	= 0;

		private	bool		_running				= false;

		#endregion

		#region Events and Delegates

		/// <summary>
		/// A Delegate for handling Tick events for a MidiTicker class.
		/// </summary>
		/// <param name="ticks">The total number of ticks passed.</param>
		public delegate void TickHandler(ulong ticks);

		/// <summary>
		/// Raised when the MidiTicker has more ticks to send.
		/// </summary>
		public event TickHandler Tick;

		#endregion

		#region Methods

		/// <summary>
		/// Creates a new MidiTicker object.
		/// </summary>
		/// <param name="ppqn">The Pulses Per Quarter Note (PPQN) from the midi file
		/// header.</param>
		public MidiTicker(ushort ppqn)
		{
			_ppqn								= ppqn;
			_timer							= new Timer();
			_timer.Elapsed			+= new ElapsedEventHandler(timer_Elapsed);

			CalcIntervalAndPulsesPer();
		}

		private void CalcIntervalAndPulsesPer()
		{
			lock (this)
			{
				bool restart		= _timer.Enabled;

				if (restart)
					_timer.Stop();

				double interval	= _tempo * IntervalTempoModifier;
				_timer.Interval	= interval;
				_pulsesPerClock	= (double)_ppqn / 10 / _tempo;

				if (restart)
					_timer.Start();
			}
		}

		private void GeneratePulses()
		{
			bool callTick	= false;

			lock (this)
			{
				long	cTicks	= DateTime.Now.Ticks;
				_pulses				+= _pulsesPerClock * (cTicks - _clockTicks);
				_clockTicks		= cTicks;

				if (_pulses >= 1.0)
					callTick	= true;
			}

			if (callTick)
			{
				_ticks	+= (ulong)_pulses;
				_pulses	%= 1;

				if (Tick != null)
					Tick(_ticks);
			}
		}

		/// <summary>
		/// Starts the MidiTicker.
		/// </summary>
		public void Start()
		{
			_timer.Start();
			_clockTicks	= DateTime.Now.Ticks;
			_running		= true;
		}

		/// <summary>
		/// Stops the MidiTicker.
		/// </summary>
		public void Stop()
		{
			_timer.Stop();
			_running	= false;
		}

		#region Event Handlers

		private void timer_Elapsed(object sender, ElapsedEventArgs e)
		{
			(new Thread(new ThreadStart(GeneratePulses))).Start();
		}

		#endregion

		#endregion

		#region Properties

		/// <summary>
		/// Indicates whether the MidiTicker is still running.
		/// </summary>
		public bool Running
		{
			get
			{
				return _running;
			}
		}

		/// <summary>
		/// The tempo to run at.
		/// </summary>
		public uint Tempo
		{
			get
			{
				return _tempo;
			}
			set
			{
				if (value != _tempo)
				{
					_tempo	= value;
					CalcIntervalAndPulsesPer();
				}
			}
		}

		#endregion
	}
}
