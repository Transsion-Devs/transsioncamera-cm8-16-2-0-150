.class public Lcom/ss/android/ttve/model/MVResourceBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final ETEMVTimeModeEmptyEnd:I = 0x0

.field public static final ETEMVTimeModeEmptyStart:I = 0x1

.field public static final ETEMVTimeModeFillEnd:I = 0x2

.field public static final ETEMVTimeModeFillStart:I = 0x3

.field public static final ETEMVTimeModeRepeat:I = 0x4

.field public static final ETEMVTimeModeStretch:I = 0x5


# instance fields
.field public clipIndex:I

.field public content:Ljava/lang/String;

.field public isLoop:I

.field public isMute:Z

.field public musicFadeIn:D

.field public musicFadeOut:D

.field public rid:I

.field public seqIn:D

.field public seqOut:D

.field public timeMode:I

.field public trackIndex:I

.field public trimIn:D

.field public trimOut:D

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/ss/android/ttve/model/MVResourceBean;->trackIndex:I

    .line 19
    iput v0, p0, Lcom/ss/android/ttve/model/MVResourceBean;->clipIndex:I

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/ss/android/ttve/model/MVResourceBean;->isLoop:I

    .line 21
    iput-boolean v0, p0, Lcom/ss/android/ttve/model/MVResourceBean;->isMute:Z

    .line 29
    iput v0, p0, Lcom/ss/android/ttve/model/MVResourceBean;->timeMode:I

    return-void
.end method
