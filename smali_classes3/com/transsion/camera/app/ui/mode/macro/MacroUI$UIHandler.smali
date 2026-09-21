.class Lcom/transsion/camera/app/ui/mode/macro/MacroUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/macro/MacroUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIHandler"
.end annotation


# instance fields
.field mUIWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/mode/macro/MacroUI;Lcom/transsion/camera/app/ui/mode/macro/MacroUI;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 47
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI$UIHandler;->mUIWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI$UIHandler;->mUIWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;

    .line 53
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_17

    const/16 v0, 0x65

    if-eq p1, v0, :cond_13

    return-void

    .line 58
    :cond_13
    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->-$$Nest$mdoHideHint(Lcom/transsion/camera/app/ui/mode/macro/MacroUI;)V

    return-void

    .line 55
    :cond_17
    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->-$$Nest$mdoShowHint(Lcom/transsion/camera/app/ui/mode/macro/MacroUI;)V

    return-void
.end method
