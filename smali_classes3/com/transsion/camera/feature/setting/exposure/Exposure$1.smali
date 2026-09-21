.class Lcom/transsion/camera/feature/setting/exposure/Exposure$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/exposure/Exposure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/exposure/Exposure;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/exposure/Exposure;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/exposure/Exposure$1;->this$0:Lcom/transsion/camera/feature/setting/exposure/Exposure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 2

    .line 120
    invoke-static {}, Lcom/transsion/camera/feature/setting/exposure/Exposure;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "onPreviewStarted"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStopped()V
    .registers 3

    .line 112
    invoke-static {}, Lcom/transsion/camera/feature/setting/exposure/Exposure;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPreviewStopped"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/exposure/Exposure$1;->this$0:Lcom/transsion/camera/feature/setting/exposure/Exposure;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/exposure/Exposure;->-$$Nest$fgetmIsProfessionalMode(Lcom/transsion/camera/feature/setting/exposure/Exposure;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/exposure/Exposure$1;->this$0:Lcom/transsion/camera/feature/setting/exposure/Exposure;

    invoke-static {}, Lcom/transsion/camera/feature/setting/exposure/Exposure;->-$$Nest$sfgetEXPOSURE_DEFAULT_VALUE()Landroid/util/Rational;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/exposure/Exposure;->onValueChanged(Ljava/lang/String;)V

    :cond_1e
    return-void
.end method
