.class Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->createExecuteListener()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecuted()V
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "IExecuteListener onResult"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->-$$Nest$mremoveExecuteListenerLocked(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;)V

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->-$$Nest$mcheckExecuteCompleted(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;)V

    return-void
.end method
