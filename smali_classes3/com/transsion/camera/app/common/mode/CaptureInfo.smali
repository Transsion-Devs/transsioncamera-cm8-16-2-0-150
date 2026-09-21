.class public Lcom/transsion/camera/app/common/mode/CaptureInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCaptureCount:I

.field public final mMirror:Z

.field public final mOrientation:I

.field public final mWatermark:Z


# direct methods
.method public constructor <init>(IZZ)V
    .registers 5

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CaptureInfo;->mCaptureCount:I

    .line 25
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/mode/CaptureInfo;->mMirror:Z

    .line 26
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CaptureInfo;->mOrientation:I

    .line 27
    iput-boolean p3, p0, Lcom/transsion/camera/app/common/mode/CaptureInfo;->mWatermark:Z

    return-void
.end method


# virtual methods
.method public getCaptureCount()I
    .registers 1

    .line 35
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CaptureInfo;->mCaptureCount:I

    return p0
.end method

.method public setCaptureCount(I)V
    .registers 2

    .line 31
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CaptureInfo;->mCaptureCount:I

    return-void
.end method
