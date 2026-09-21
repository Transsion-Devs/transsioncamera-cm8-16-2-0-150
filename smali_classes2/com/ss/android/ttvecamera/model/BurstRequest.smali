.class public Lcom/ss/android/ttvecamera/model/BurstRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BURST_TYPE_BURST:I = 0x1

.field public static final BURST_TYPE_NORMAL:I


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

.field public frameInterval:I

.field public imageHeight:I

.field public imageWidth:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/ss/android/ttvecamera/model/BurstRequest;->burstType:I

    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/ss/android/ttvecamera/model/BurstRequest;->aeExposureValues:Ljava/util/List;

    .line 19
    iput v0, p0, Lcom/ss/android/ttvecamera/model/BurstRequest;->imageWidth:I

    .line 24
    iput v0, p0, Lcom/ss/android/ttvecamera/model/BurstRequest;->imageHeight:I

    .line 29
    iput v0, p0, Lcom/ss/android/ttvecamera/model/BurstRequest;->frameInterval:I

    .line 34
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/model/BurstRequest;->canStopRepeating:Z

    return-void
.end method
