.class public interface abstract Lcom/transsion/hubsdk/interfaces/hardware/input/ITranInputManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract ignoreMultiWindowGesture()Z
.end method

.method public abstract injectInputEvent(Landroid/view/InputEvent;I)Z
.end method

.method public abstract monitorGestureInput(Ljava/lang/String;ILcom/transsion/hubsdk/api/view/ITranTouchEventHandler;)Lcom/transsion/hubsdk/api/view/ITranInputMonitor;
.end method

.method public abstract registerStylusKeyListener(Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)V
.end method

.method public abstract setBackGestureMode(Z)V
.end method

.method public abstract setBackGestureResult(Landroid/os/IBinder;Z)V
.end method

.method public abstract singleKeyPanicBehaviorCheck(Landroid/view/KeyEvent;)V
.end method

.method public abstract unregisterStylusKeyListener(Lcom/transsion/hubsdk/api/view/inputmethod/ITranStylusKeyListener;)V
.end method

.method public abstract updateBackGestureRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V
.end method
