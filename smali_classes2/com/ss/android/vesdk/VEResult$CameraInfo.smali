.class public final Lcom/ss/android/vesdk/VEResult$CameraInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraInfo"
.end annotation


# static fields
.field public static final TEE_CAMERA_DEFAULT:I = 0x0

.field public static final TEE_CAMERA_SLOW_MOTION_DISABLE:I = 0x64

.field public static final TEE_CAMERA_SLOW_MOTION_FINISH:I = 0x67

.field public static final TEE_CAMERA_SLOW_MOTION_READY:I = 0x65

.field public static final TEE_CAMERA_SLOW_MOTION_VIDEO_DONE:I = 0x66

.field public static final TET_CAMERA_FEATURE_NOTIFY:I = 0x1

.field public static final TET_CAMERA_FRAME_CAPTURED:I = 0x3

.field public static final TET_CAMERA_PREVIEW:I = 0x0

.field public static final TET_CAMERA_SLOW_MOTION:I = 0x64

.field public static final TET_CAMERA_STOP_PREVIEW:I = 0x4

.field public static final TET_CAMERA_TYPE:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
