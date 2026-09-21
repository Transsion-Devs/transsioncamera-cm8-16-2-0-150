.class public Lcom/ss/android/medialib/mark/MarkParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/mark/MarkParams$TrailMark;
    }
.end annotation


# static fields
.field public static final COLOR_BLACK:I = 0x0

.field public static final COLOR_WHITE:I = 0x1

.field public static final RATIO_16_9:I = 0x1

.field public static final RATIO_1_1:I = 0x0

.field public static final RATIO_NORMAL:I = -0x1


# instance fields
.field public color:I

.field public hasWaterMark:Z

.field public images:[Ljava/lang/String;

.field public inputFile:Ljava/lang/String;

.field public interval:I

.field public isCPUEncode:Z

.field public outputFile:Ljava/lang/String;

.field public ratio:I

.field public squareWidth:I

.field public trailMark:Lcom/ss/android/medialib/mark/MarkParams$TrailMark;

.field public useDefaultPosition:Z

.field public waterMarkMarginLeft:I

.field public waterMarkMarginTop:I

.field public waterMarkScale:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/ss/android/medialib/mark/MarkParams;->isCPUEncode:Z

    .line 49
    iput v0, p0, Lcom/ss/android/medialib/mark/MarkParams;->interval:I

    const/16 v1, 0x2ee

    .line 54
    iput v1, p0, Lcom/ss/android/medialib/mark/MarkParams;->squareWidth:I

    .line 59
    iput v0, p0, Lcom/ss/android/medialib/mark/MarkParams;->ratio:I

    const/4 v1, 0x0

    .line 65
    iput-boolean v1, p0, Lcom/ss/android/medialib/mark/MarkParams;->waterMarkScale:Z

    const/16 v2, 0x14

    .line 70
    iput v2, p0, Lcom/ss/android/medialib/mark/MarkParams;->waterMarkMarginLeft:I

    .line 75
    iput v2, p0, Lcom/ss/android/medialib/mark/MarkParams;->waterMarkMarginTop:I

    .line 90
    iput v0, p0, Lcom/ss/android/medialib/mark/MarkParams;->color:I

    .line 96
    iput-boolean v1, p0, Lcom/ss/android/medialib/mark/MarkParams;->hasWaterMark:Z

    .line 102
    iput-boolean v0, p0, Lcom/ss/android/medialib/mark/MarkParams;->useDefaultPosition:Z

    return-void
.end method
