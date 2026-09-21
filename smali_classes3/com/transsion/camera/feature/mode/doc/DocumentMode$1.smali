.class Lcom/transsion/camera/feature/mode/doc/DocumentMode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/doc/DocumentMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V
    .registers 2

    .line 208
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$1;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyCameraOperateAction(I)V
    .registers 3

    const/16 v0, 0xaa

    if-eq p1, v0, :cond_17

    const/16 v0, 0xab

    if-eq p1, v0, :cond_11

    const/16 v0, 0x192

    if-eq p1, v0, :cond_17

    const/16 v0, 0x193

    if-eq p1, v0, :cond_11

    return-void

    .line 220
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$1;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$mshowTip(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V

    return-void

    .line 215
    :cond_17
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$1;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$mhideTip(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V

    return-void
.end method
