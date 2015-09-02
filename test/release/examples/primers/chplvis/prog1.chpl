
  //  Example 1 using visual debug
  //  Use your browser to read chplvis.html for the full primer

  //  The standard module "VisualDebug" is needed to generate data
  //  during the program's run for chplvis.

  use VisualDebug;

  //  This call requests the VisualDebug system to start the
  //  generation of data files that tracks communication
  //  between locales and tasks.

  startVdebug("E1");


  //  This is a simple loop that runs tasks on all locales

  coforall loc in Locales do
    on loc do writeln("Hello from locale " + here.id + ".");

  //  This stops the VisualDebug system and close the data files.

  stopVdebug();


  //  Now that the program has completed and generated data files,
  //  run "chplvis E1" to look at the results.
  //
  //  The file chplvis.html shows you what you should expect to
  //  see when running chplvis.
