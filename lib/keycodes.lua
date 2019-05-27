-- keyboard map class

local keycodes = {}

keycodes.chars = {[0] = '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'}

local transpose_table = {
  ['A'] = 'A0',
  ['a'] = 'a0',
  ['B'] = 'B0',
  ['C'] = 'C0',
  ['c'] = 'c0',
  ['D'] = 'D0',
  ['d'] = 'd0',
  ['E'] = 'E0',
  ['F'] = 'F0',
  ['f'] = 'f0',
  ['G'] = 'G0',
  ['g'] = 'g0',
  ['H'] = 'A0',
  ['h'] = 'a0',
  ['I'] = 'B0',
  ['J'] = 'C1',
  ['j'] = 'c1',
  ['K'] = 'D1',
  ['k'] = 'd1',
  ['L'] = 'E1',
  ['M'] = 'F1',
  ['m'] = 'f1',
  ['N'] = 'G1',
  ['n'] = 'g1',
  ['O'] = 'A1',
  ['o'] = 'a1',
  ['P'] = 'B1',
  ['Q'] = 'C2',
  ['q'] = 'c2',
  ['R'] = 'D2',
  ['r'] = 'd2',
  ['S'] = 'E2',
  ['T'] = 'F2',
  ['t'] = 'f2',
  ['U'] = 'G2',
  ['u'] = 'g2',
  ['V'] = 'A2',
  ['v'] = 'a2',
  ['W'] = 'B2',
  ['X'] = 'C3',
  ['x'] = 'c3',
  ['Y'] = 'D3',
  ['y'] = 'd3',
  ['Z'] = 'E3',
  ['e'] = 'e0',
  ['l'] = 'e1',
  ['s'] = 'e2',
  ['z'] = 'e3',
  ['b'] = 'b0',
  ['i'] = 'b0',
  ['p'] = 'b1',
  ['w'] = 'b2',
  ['0'] = 'C3',
  ['1'] = 'D3',
  ['2'] = 'E3',
  ['3'] = 'F3',
  ['4'] = 'G3',
  ['5'] = 'A3',
  ['6'] = 'B3',
  ['7'] = 'C4',
  ['8'] = 'D4',
  ['9'] = 'E4',
}

keycodes.keys = { 
  [hid.codes.KEY_1]="1",
  [hid.codes.KEY_2]="2",
  [hid.codes.KEY_3]="3",
  [hid.codes.KEY_4]="4",
  [hid.codes.KEY_5]="5",
  [hid.codes.KEY_6]="6",
  [hid.codes.KEY_7]="7",
  [hid.codes.KEY_8]="8",
  [hid.codes.KEY_9]="9",
  [hid.codes.KEY_0]="0",
  [hid.codes.KEY_Q]="Q",
  [hid.codes.KEY_W]="W",
  [hid.codes.KEY_E]="E",
  [hid.codes.KEY_R]="R",
  [hid.codes.KEY_T]="T",
  [hid.codes.KEY_Y]="Y",
  [hid.codes.KEY_U]="U",
  [hid.codes.KEY_I]="I",
  [hid.codes.KEY_O]="O",
  [hid.codes.KEY_P]="P",
  [hid.codes.KEY_A]="A",
  [hid.codes.KEY_S]="S",
  [hid.codes.KEY_D]="D",
  [hid.codes.KEY_F]="F",
  [hid.codes.KEY_G]="G",
  [hid.codes.KEY_H]="H",
  [hid.codes.KEY_J]="J",
  [hid.codes.KEY_K]="K",
  [hid.codes.KEY_L]="L",
  [hid.codes.KEY_Z]="Z",
  [hid.codes.KEY_X]="X",
  [hid.codes.KEY_C]="C",
  [hid.codes.KEY_V]="V",
  [hid.codes.KEY_B]="B",
  [hid.codes.KEY_N]="N",
  [hid.codes.KEY_M]="M",

  [hid.codes.KEY_MINUS]="-",
  [hid.codes.KEY_EQUAL]="=",
  [hid.codes.KEY_APOSTROPHE]="'",
  [hid.codes.KEY_GRAVE]="`",
  [hid.codes.KEY_COMMA]=",",
  [hid.codes.KEY_DOT]=".",
  [hid.codes.KEY_SEMICOLON]=";",
  [hid.codes.KEY_SLASH]="/",
  [hid.codes.KEY_BACKSLASH]="\\",
  [hid.codes.KEY_LEFTBRACE]="[",
  [hid.codes.KEY_RIGHTBRACE]="]",
  [hid.codes.KEY_SPACE]=" ",
  [hid.codes.KEY_KPASTERISK]="*",

  [hid.codes.KEY_KPMINUS]="-",
  [hid.codes.KEY_KPPLUS]="+",
  [hid.codes.KEY_KPDOT]=".",
  [hid.codes.KEY_KPEQUAL]="]=",
  [hid.codes.KEY_KP0]="0",
  [hid.codes.KEY_KP1]="1",
  [hid.codes.KEY_KP2]="2",
  [hid.codes.KEY_KP3]="3",
  [hid.codes.KEY_KP4]="4",
  [hid.codes.KEY_KP5]="5",
  [hid.codes.KEY_KP6]="6",
  [hid.codes.KEY_KP7]="7",
  [hid.codes.KEY_KP8]="8",
  [hid.codes.KEY_KP9]="9",
  [hid.codes.KEY_KPENTER]="Enter",
  [hid.codes.KEY_KPSLASH]="Slash",
  [hid.codes.KEY_102ND]="102ND",
  [hid.codes.KEY_TAB]="  ",

}
keycodes.shifts = { 
  [hid.codes.KEY_1]="!",
  [hid.codes.KEY_2]="@",
  [hid.codes.KEY_3]="#",
  [hid.codes.KEY_4]="$",
  [hid.codes.KEY_5]="%",
  [hid.codes.KEY_6]="^",
  [hid.codes.KEY_7]="&",
  [hid.codes.KEY_8]="*",
  [hid.codes.KEY_9]="(",
  [hid.codes.KEY_0]=")",
  [hid.codes.KEY_LEFTBRACE]="{",
  [hid.codes.KEY_RIGHTBRACE]="}",
  [hid.codes.KEY_COMMA]="<",
  [hid.codes.KEY_DOT]=">",
  [hid.codes.KEY_SLASH]="?",
  [hid.codes.KEY_SEMICOLON]=":",
  [hid.codes.KEY_APOSTROPHE]="\"",
  [hid.codes.KEY_BACKSLASH]="|",
  [hid.codes.KEY_MINUS]="—",
  [hid.codes.KEY_EQUAL]="+",
  [hid.codes.KEY_GRAVE]="~",
}

keycodes.cmds = { 
  [hid.codes.KEY_ESC]="ESC",
  [hid.codes.KEY_LEFTSHIFT]="Left Shift",
  [hid.codes.KEY_RIGHTSHIFT]="Right Shift",
  [hid.codes.KEY_LEFTALT]="Left Alt",
  [hid.codes.KEY_RIGHTALT]="Right Alt",
  [hid.codes.KEY_LEFTCTRL]="Left CTRL",
  [hid.codes.KEY_RIGHTCTRL]="Right CTRL",
  [hid.codes.KEY_BACKSPACE]="Backspace",
  [hid.codes.KEY_DELETE]="Delete",
  [hid.codes.KEY_ENTER]="Enter",
  [hid.codes.KEY_CAPSLOCK]="Capslock",
  [hid.codes.KEY_NUMLOCK]="Numlock",
  [hid.codes.KEY_SCROLLLOCK]="Scroll Lock",

  [hid.codes.KEY_SYSRQ]="SYSRQ",
  [hid.codes.KEY_HOME]="Home",
  [hid.codes.KEY_UP]="Up",
  [hid.codes.KEY_PAGEUP]="Pageup",
  [hid.codes.KEY_LEFT]="Left",
  [hid.codes.KEY_RIGHT]="Right",
  [hid.codes.KEY_END]="End",
  [hid.codes.KEY_DOWN]="Down",
  [hid.codes.KEY_PAGEDOWN]="Page Down",
  [hid.codes.KEY_INSERT]="Insert",
  [hid.codes.KEY_PAUSE]="Pause",
  [hid.codes.KEY_LEFTMETA]="Left Meta",
  [hid.codes.KEY_RIGHTMETA]="Right Meta",
  [hid.codes.KEY_COMPOSE]="Compose"
}


return keycodes
