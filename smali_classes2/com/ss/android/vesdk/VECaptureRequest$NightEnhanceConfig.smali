.class public Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VECaptureRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NightEnhanceConfig"
.end annotation


# static fields
.field public static final BURST_TYPE_BURST:I = 0x1

.field public static final BURST_TYPE_NORMAL:I = 0x0

.field public static final FORMAT_NV21:I = 0x6


# instance fields
.field public aeExposureValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public burstType:I

.field public canStopRepeating:Z

.field public directRender:Z

.field public dumpPathDir:Ljava/lang/String;

.field public enableDump:Z

.field public format:I

.field public frameInterval:I

.field public skinSegModelPath:Ljava/lang/String;

.field public sourceHeight:I

.field public sourceWidth:I

.field public vrsrModelPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 359
    iput v0, p0, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->burstType:I

    const/4 v1, 0x0

    .line 364
    iput-object v1, p0, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->aeExposureValues:Ljava/util/List;

    .line 369
    const-string v1, ""

    iput-object v1, p0, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->vrsrModelPath:Ljava/lang/String;

    .line 374
    iput-object v1, p0, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->skinSegModelPath:Ljava/lang/String;

    .line 379
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->enableDump:Z

    .line 384
    iput-object v1, p0, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->dumpPathDir:Ljava/lang/String;

    const/4 v1, 0x1

    .line 389
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->directRender:Z

    .line 394
    iput v0, p0, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->sourceWidth:I

    .line 399
    iput v0, p0, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->sourceHeight:I

    .line 404
    iput v0, p0, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->frameInterval:I

    .line 409
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->canStopRepeating:Z

    const/4 v0, 0x6

    .line 414
    iput v0, p0, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->format:I

    return-void
.end method
