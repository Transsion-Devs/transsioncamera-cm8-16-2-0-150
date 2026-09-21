.class public Lcom/ss/android/vesdk/algorithm/VEFaceBeautifyDetectExtParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/algorithm/VEFaceBeautifyDetectExtParam$BeautifyPlace;
    }
.end annotation


# static fields
.field public static final BEAUTIFY_IN_HP_SHOTSCRREN:I = 0x2

.field public static final BEAUTIFY_IN_SHOTSCREEN:I = 0x0

.field public static final BEAUTIFY_IN_TAKEPICTURE:I = 0x1


# instance fields
.field public algoDebug:Z

.field public algoDespeckleReserve:Z

.field public alogDespeckle:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAlgoDebug()Z
    .registers 1

    .line 27
    iget-boolean p0, p0, Lcom/ss/android/vesdk/algorithm/VEFaceBeautifyDetectExtParam;->algoDebug:Z

    return p0
.end method

.method public isAlgoDespeckleReserve()Z
    .registers 1

    .line 43
    iget-boolean p0, p0, Lcom/ss/android/vesdk/algorithm/VEFaceBeautifyDetectExtParam;->algoDespeckleReserve:Z

    return p0
.end method

.method public isAlogDespeckle()Z
    .registers 1

    .line 35
    iget-boolean p0, p0, Lcom/ss/android/vesdk/algorithm/VEFaceBeautifyDetectExtParam;->alogDespeckle:Z

    return p0
.end method

.method public setAlgoDebug(Z)V
    .registers 2

    .line 31
    iput-boolean p1, p0, Lcom/ss/android/vesdk/algorithm/VEFaceBeautifyDetectExtParam;->algoDebug:Z

    return-void
.end method

.method public setAlgoDespeckleReserve(Z)V
    .registers 2

    .line 47
    iput-boolean p1, p0, Lcom/ss/android/vesdk/algorithm/VEFaceBeautifyDetectExtParam;->algoDespeckleReserve:Z

    return-void
.end method

.method public setAlogDespeckle(Z)V
    .registers 2

    .line 39
    iput-boolean p1, p0, Lcom/ss/android/vesdk/algorithm/VEFaceBeautifyDetectExtParam;->alogDespeckle:Z

    return-void
.end method
