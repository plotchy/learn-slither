"""
This is a basic slither detector template.

Some basic setup:

Make a `custom` folder to hold your detectors in the slither project, such as
- `<path/to/slither>/slither/detectors/custom/`
- add a `__init__.py` file to this folder
this is where you will place your detector files
    
Place this file in the `custom` folder, and rename it to your detector name.

Add the following line to `<path/to/slither>/slither/detectors/all_detectors.py`:
    from .custom.hello_world import HelloWorld

Run slither with your detector:
    slither . --detect hello_world

"""

from typing import List
from slither.detectors.abstract_detector import (
    AbstractDetector,
    DetectorClassification,
    DETECTOR_INFO,
)
from slither.utils.output import Output


class HelloWorld(AbstractDetector):
    """
    Find contracts that have a "hello_world" function
    """

    # shows up in `slither --list-detectors`
    ARGUMENT = "hello_world" # run with `slither . --detect <ARGUMENT>`
    HELP = "Find contracts that have a hello_world function" 
    IMPACT = DetectorClassification.INFORMATIONAL # HIGH, MEDIUM, LOW, INFORMATIONAL, OPTIMIZATION
    CONFIDENCE = DetectorClassification.HIGH # HIGH, MEDIUM, LOW

    # These wiki values are required, but I typically leave them as "."
    WIKI = (".")
    WIKI_TITLE = "."
    WIKI_DESCRIPTION = "."
    WIKI_EXPLOIT_SCENARIO = "."
    WIKI_RECOMMENDATION = "."

    def _detect(self) -> List[Output]:
        results = []
        for c in self.contracts:
            for f in c.functions:
                # check if the function is named "hello_world"
                if f.name == "hello_world":
                    info: DETECTOR_INFO = [
                        f,
                        " contains a hello_world function: ",
                        c,
                        "\n",
                    ]
                    json = self.generate_result(info)

                    results.append(json)
        return results
    