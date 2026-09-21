.class Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$JpegInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JpegInfo"
.end annotation


# instance fields
.field mIsBGImage:Z

.field mJpegData:[B


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;[BZ)V
    .registers 4

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    iput-object p2, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$JpegInfo;->mJpegData:[B

    .line 409
    iput-boolean p3, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$JpegInfo;->mIsBGImage:Z

    return-void
.end method


# virtual methods
.method isValid()Z
    .registers 3

    .line 413
    iget-object p0, p0, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager$JpegInfo;->mJpegData:[B

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    .line 414
    :goto_7
    invoke-static {}, Lcom/transsion/camera/app/common/groupcapture/GroupCaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "isValid, null jpegData"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method
