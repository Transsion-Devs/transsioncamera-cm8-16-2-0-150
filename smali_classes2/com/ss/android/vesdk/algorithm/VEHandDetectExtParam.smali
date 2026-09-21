.class public Lcom/ss/android/vesdk/algorithm/VEHandDetectExtParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private handDetectMaxNum:I

.field private handLowPowerMode:I

.field private mode:Lcom/ss/android/vesdk/algorithm/VEHandModelType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandDetectMaxNum()I
    .registers 1

    .line 29
    iget p0, p0, Lcom/ss/android/vesdk/algorithm/VEHandDetectExtParam;->handDetectMaxNum:I

    return p0
.end method

.method public getHandLowPowerMode()I
    .registers 1

    .line 13
    iget p0, p0, Lcom/ss/android/vesdk/algorithm/VEHandDetectExtParam;->handLowPowerMode:I

    return p0
.end method

.method public getMode()Lcom/ss/android/vesdk/algorithm/VEHandModelType;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/ss/android/vesdk/algorithm/VEHandDetectExtParam;->mode:Lcom/ss/android/vesdk/algorithm/VEHandModelType;

    return-object p0
.end method

.method public setHandDetectMaxNum(I)V
    .registers 2

    .line 33
    iput p1, p0, Lcom/ss/android/vesdk/algorithm/VEHandDetectExtParam;->handDetectMaxNum:I

    return-void
.end method

.method public setHandLowPowerMode(I)V
    .registers 2

    .line 17
    iput p1, p0, Lcom/ss/android/vesdk/algorithm/VEHandDetectExtParam;->handLowPowerMode:I

    return-void
.end method

.method public setMode(Lcom/ss/android/vesdk/algorithm/VEHandModelType;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/ss/android/vesdk/algorithm/VEHandDetectExtParam;->mode:Lcom/ss/android/vesdk/algorithm/VEHandModelType;

    return-void
.end method
