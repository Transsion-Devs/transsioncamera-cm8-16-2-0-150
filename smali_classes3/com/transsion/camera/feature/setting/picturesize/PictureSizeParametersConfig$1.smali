.class Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig$1;->this$0:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamIdCallback([I)V
    .registers 4

    if-eqz p1, :cond_38

    .line 77
    array-length v0, p1

    if-lez v0, :cond_38

    const/4 v0, 0x0

    .line 78
    aget p1, p1, v0

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig$1;->this$0:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->-$$Nest$fgetmStreamId(Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;)I

    move-result v0

    if-eq v0, p1, :cond_38

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig$1;->this$0:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->-$$Nest$fputmStreamId(Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;I)V

    .line 81
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig$1;->this$0:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->sendSettingChangeRequest()V

    .line 82
    invoke-static {}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onStreamIdCallback] mStreamId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig$1;->this$0:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->-$$Nest$fgetmStreamId(Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_38
    return-void
.end method
