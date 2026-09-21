.class public Lcom/ss/android/ttve/vealgorithm/params/VEVideoStopMotionParam;
.super Lcom/ss/android/ttve/vealgorithm/params/VEAlgorithmParam;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public compileHeight:I

.field public compileWidth:I

.field public graphPath:Ljava/lang/String;

.field public interval:I

.field public saveDir:Ljava/lang/String;

.field public startTime:I

.field public videoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Lcom/ss/android/ttve/vealgorithm/params/VEAlgorithmParam;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/ss/android/ttve/vealgorithm/params/VEVideoStopMotionParam;->compileWidth:I

    .line 13
    iput v0, p0, Lcom/ss/android/ttve/vealgorithm/params/VEVideoStopMotionParam;->compileHeight:I

    .line 7
    sget v0, Lcom/ss/android/ttve/vealgorithm/params/VEAlgorithmType;->VEAlgorithmTypeVideoStopMotionFrame:I

    iput v0, p0, Lcom/ss/android/ttve/vealgorithm/params/VEAlgorithmParam;->type:I

    return-void
.end method
