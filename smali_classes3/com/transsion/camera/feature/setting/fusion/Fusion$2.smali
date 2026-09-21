.class Lcom/transsion/camera/feature/setting/fusion/Fusion$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/fusion/Fusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/fusion/Fusion;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/fusion/Fusion;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/fusion/Fusion$2;->this$0:Lcom/transsion/camera/feature/setting/fusion/Fusion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamIdCallback([I)V
    .registers 4

    if-eqz p1, :cond_22

    .line 164
    array-length v0, p1

    if-lez v0, :cond_22

    const/4 v0, 0x0

    .line 165
    aget p1, p1, v0

    .line 166
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/fusion/Fusion$2;->this$0:Lcom/transsion/camera/feature/setting/fusion/Fusion;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/fusion/Fusion;->-$$Nest$fgetmStreamId(Lcom/transsion/camera/feature/setting/fusion/Fusion;)I

    move-result v1

    if-eq v1, p1, :cond_15

    .line 167
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/fusion/Fusion$2;->this$0:Lcom/transsion/camera/feature/setting/fusion/Fusion;

    invoke-static {v1, p1}, Lcom/transsion/camera/feature/setting/fusion/Fusion;->-$$Nest$fputmStreamId(Lcom/transsion/camera/feature/setting/fusion/Fusion;I)V

    .line 169
    :cond_15
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/fusion/Fusion$2;->this$0:Lcom/transsion/camera/feature/setting/fusion/Fusion;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/fusion/Fusion;->-$$Nest$fgetmPreviewChanged(Lcom/transsion/camera/feature/setting/fusion/Fusion;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/fusion/Fusion$2;->this$0:Lcom/transsion/camera/feature/setting/fusion/Fusion;

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/setting/fusion/Fusion;->-$$Nest$fputmPreviewChanged(Lcom/transsion/camera/feature/setting/fusion/Fusion;Z)V

    :cond_22
    return-void
.end method
