.class Lcom/transsion/camera/feature/tzservice/TZService$3;
.super Lvendor/transsion/hardware/camera/tzservice/ITZCaptureJpegCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/tzservice/TZService;->setTZCaptureJpegCallback(Lcom/transsion/camera/feature/tzservice/TZService$ICaptureJpegCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/tzservice/TZService;

.field final synthetic val$callback:Lcom/transsion/camera/feature/tzservice/TZService$ICaptureJpegCallback;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/tzservice/TZService;Lcom/transsion/camera/feature/tzservice/TZService$ICaptureJpegCallback;)V
    .registers 3

    .line 148
    iput-object p1, p0, Lcom/transsion/camera/feature/tzservice/TZService$3;->this$0:Lcom/transsion/camera/feature/tzservice/TZService;

    iput-object p2, p0, Lcom/transsion/camera/feature/tzservice/TZService$3;->val$callback:Lcom/transsion/camera/feature/tzservice/TZService$ICaptureJpegCallback;

    invoke-direct {p0}, Lvendor/transsion/hardware/camera/tzservice/ITZCaptureJpegCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .registers 1

    .line 162
    const-string p0, "df8558d40314229d55e0710b707e64ad089f7f7d"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onTZCaptureCompleted(Landroid/os/ParcelFileDescriptor;JII)Z
    .registers 8

    .line 151
    const-string v0, "TZService"

    const-string v1, "onTZCaptureCompleted: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZService$3;->val$callback:Lcom/transsion/camera/feature/tzservice/TZService$ICaptureJpegCallback;

    invoke-interface/range {p0 .. p5}, Lcom/transsion/camera/feature/tzservice/TZService$ICaptureJpegCallback;->onTZCaptureCompleted(Landroid/os/ParcelFileDescriptor;JII)Z

    move-result p0

    return p0
.end method
