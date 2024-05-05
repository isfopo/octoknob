module base()
{
	linear_extrude(height = 3)
	{
		difference()
		{
			square(size = [ 144, 36 ], center = true);
			import(file = "octoknob-Edge_Cuts.svg", center = true, dpi = 96);
			// import(file = "octoknob-F_Silkscreen.svg", center = true);
		}
	}
}

module layers()
{
	translate([ 0, 0, 2 ])

	linear_extrude(height = 1)
	{
		import(file = "octoknob-F_Silkscreen.svg", center = true);
		import(file = "octoknob-F_Cu.svg", center = true);
	}
}

difference()
{
	base();
	layers();
}
