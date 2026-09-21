.class public Lcom/transsion/camera/feature/setting/videoquality/VideoQualityHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final QUALITY_QHD:I = 0xb

.field public static final QUALITY_TIME_LAPSE_QHD:I = 0x3f3

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static sTimeLapseVideoQualities:[I

.field public static sVideoQualities:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 9
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoQualityHelper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/16 v3, 0xb

    const/4 v4, 0x6

    .line 16
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityHelper;->sVideoQualities:[I

    const/16 v0, 0x3ed

    const/16 v1, 0x3ec

    const/16 v2, 0x3f0

    const/16 v3, 0x3f3

    const/16 v4, 0x3ee

    .line 24
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityHelper;->sTimeLapseVideoQualities:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
