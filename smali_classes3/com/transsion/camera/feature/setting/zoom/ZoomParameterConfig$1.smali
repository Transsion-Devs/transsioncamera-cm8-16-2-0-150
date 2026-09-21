.class Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;)V
    .registers 2

    .line 239
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamIdCallback([I)V
    .registers 4

    if-eqz p1, :cond_33

    .line 243
    array-length v0, p1

    if-lez v0, :cond_33

    const/4 v0, 0x0

    .line 244
    aget p1, p1, v0

    .line 245
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->-$$Nest$fgetmStreamId(Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;)I

    move-result v0

    if-eq v0, p1, :cond_33

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->-$$Nest$fputmStreamId(Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;I)V

    .line 247
    invoke-static {}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onStreamIdCallback] mStreamId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->-$$Nest$fgetmStreamId(Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_33
    return-void
.end method
