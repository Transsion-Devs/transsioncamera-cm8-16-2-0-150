.class Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$3;
.super Landroid/view/IScrollCaptureCallbacks$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;->startCapture(Lcom/transsion/hubsdk/aosp/view/TranScrollCaptureResponseExt;Landroid/view/Surface;Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$ITranScrollCaptureCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;

.field final synthetic val$iTranScrollCaptureCallbacks:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$ITranScrollCaptureCallbacks;


# direct methods
.method constructor <init>(Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$ITranScrollCaptureCallbacks;)V
    .registers 3

    .line 156
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$3;->this$0:Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt;

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$3;->val$iTranScrollCaptureCallbacks:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$ITranScrollCaptureCallbacks;

    invoke-direct {p0}, Landroid/view/IScrollCaptureCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureEnded()V
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$3;->val$iTranScrollCaptureCallbacks:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$ITranScrollCaptureCallbacks;

    if-eqz p0, :cond_7

    .line 174
    invoke-interface {p0}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$ITranScrollCaptureCallbacks;->onCaptureEnded()V

    :cond_7
    return-void
.end method

.method public onCaptureStarted()V
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$3;->val$iTranScrollCaptureCallbacks:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$ITranScrollCaptureCallbacks;

    if-eqz p0, :cond_7

    .line 160
    invoke-interface {p0}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$ITranScrollCaptureCallbacks;->onCaptureStarted()V

    :cond_7
    return-void
.end method

.method public onImageRequestCompleted(ILandroid/graphics/Rect;)V
    .registers 3

    .line 166
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/window/TranAospWindowManagerExt$3;->val$iTranScrollCaptureCallbacks:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$ITranScrollCaptureCallbacks;

    if-eqz p0, :cond_7

    .line 167
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$ITranScrollCaptureCallbacks;->onImageRequestCompleted(ILandroid/graphics/Rect;)V

    :cond_7
    return-void
.end method
