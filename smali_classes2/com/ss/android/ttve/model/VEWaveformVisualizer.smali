.class public Lcom/ss/android/ttve/model/VEWaveformVisualizer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static Default:I = 0x0

.field public static MultiChannelMax:I = 0x4

.field public static MultiChannelMean:I = 0x2

.field public static SampleMax:I = 0x0

.field public static SampleMean:I = 0x1

.field public static kNormalizeMinMax:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    or-int/lit8 v0, v0, 0x8

    .line 13
    sput v0, Lcom/ss/android/ttve/model/VEWaveformVisualizer;->Default:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
