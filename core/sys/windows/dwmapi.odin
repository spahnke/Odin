#+build windows
package sys_windows

foreign import dwmapi "system:Dwmapi.lib"

DWMWINDOWATTRIBUTE :: enum {
	DWMWA_NCRENDERING_ENABLED = 1,
	DWMWA_NCRENDERING_POLICY,
	DWMWA_TRANSITIONS_FORCEDISABLED,
	DWMWA_ALLOW_NCPAINT,
	DWMWA_CAPTION_BUTTON_BOUNDS,
	DWMWA_NONCLIENT_RTL_LAYOUT,
	DWMWA_FORCE_ICONIC_REPRESENTATION,
	DWMWA_FLIP3D_POLICY,
	DWMWA_EXTENDED_FRAME_BOUNDS,
	DWMWA_HAS_ICONIC_BITMAP,
	DWMWA_DISALLOW_PEEK,
	DWMWA_EXCLUDED_FROM_PEEK,
	DWMWA_CLOAK,
	DWMWA_CLOAKED,
	DWMWA_FREEZE_REPRESENTATION,
	DWMWA_PASSIVE_UPDATE_MODE,
	DWMWA_USE_HOSTBACKDROPBRUSH,
	DWMWA_USE_IMMERSIVE_DARK_MODE = 20,
	DWMWA_WINDOW_CORNER_PREFERENCE = 33,
	DWMWA_BORDER_COLOR,
	DWMWA_CAPTION_COLOR,
	DWMWA_TEXT_COLOR,
	DWMWA_VISIBLE_FRAME_BORDER_THICKNESS,
	DWMWA_SYSTEMBACKDROP_TYPE,
	DWMWA_LAST,
}

DWMNCRENDERINGPOLICY :: enum {
	DWMNCRP_USEWINDOWSTYLE,
	DWMNCRP_DISABLED,
	DWMNCRP_ENABLED,
	DWMNCRP_LAST,
}

DWM_WINDOW_CORNER_PREFERENCE :: enum c_int {
	DEFAULT,
	DONOTROUND,
	ROUND,
	ROUNDSMALL,
}

@(default_calling_convention="system")
foreign dwmapi {
	DwmFlush :: proc() -> HRESULT ---
	DwmIsCompositionEnabled :: proc(pfEnabled: ^BOOL) -> HRESULT ---
	DwmExtendFrameIntoClientArea :: proc(hWnd: HWND, pMarInset: PMARGINS) -> HRESULT ---
	DwmGetWindowAttribute :: proc(hWnd: HWND, dwAttribute: DWORD, pvAttribute: PVOID, cbAttribute: DWORD) -> HRESULT ---
	DwmSetWindowAttribute :: proc(hWnd: HWND, dwAttribute: DWORD, pvAttribute: LPCVOID, cbAttribute: DWORD) -> HRESULT ---
}
