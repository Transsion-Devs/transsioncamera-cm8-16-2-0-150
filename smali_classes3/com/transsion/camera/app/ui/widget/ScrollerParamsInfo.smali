.class public Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCurrentValue:Ljava/lang/String;

.field private mDefaultValue:Ljava/lang/String;

.field private mIsScalesExceedValues:Z

.field private mIsShowMidValue:Z

.field private mLineStep:I

.field private mNumStep:I

.field private mUnit:Ljava/lang/String;

.field private mWhiteScaleOffset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZI)V
    .registers 6

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mUnit:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mDefaultValue:Ljava/lang/String;

    .line 16
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mIsShowMidValue:Z

    .line 17
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mIsScalesExceedValues:Z

    .line 18
    iput p4, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mLineStep:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZIII)V
    .registers 8

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mUnit:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mDefaultValue:Ljava/lang/String;

    .line 23
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mIsShowMidValue:Z

    .line 24
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mIsScalesExceedValues:Z

    .line 25
    iput p4, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mLineStep:I

    .line 26
    iput p5, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mWhiteScaleOffset:I

    .line 27
    iput p6, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mNumStep:I

    return-void
.end method


# virtual methods
.method public getCurrentValue()Ljava/lang/String;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mCurrentValue:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method public getLineStep()I
    .registers 1

    .line 63
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mLineStep:I

    return p0
.end method

.method public getNumStep()I
    .registers 1

    .line 71
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mNumStep:I

    return p0
.end method

.method public getUnit()Ljava/lang/String;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mUnit:Ljava/lang/String;

    return-object p0
.end method

.method public getWhiteScaleOffset()I
    .registers 1

    .line 67
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mWhiteScaleOffset:I

    return p0
.end method

.method public isScalesExceedValues()Z
    .registers 1

    .line 51
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mIsScalesExceedValues:Z

    return p0
.end method

.method public isShowMidValue()Z
    .registers 1

    .line 47
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mIsShowMidValue:Z

    return p0
.end method

.method public setCurrentValue(Ljava/lang/String;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mCurrentValue:Ljava/lang/String;

    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mUnit:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollerParamsInfo{defaultValue=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", currentValue=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", unit=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mUnit:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isShowMidValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mIsShowMidValue:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isScalesExceedValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mIsScalesExceedValues:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lineStep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mLineStep:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", whiteScaleOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mWhiteScaleOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numStep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->mNumStep:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
