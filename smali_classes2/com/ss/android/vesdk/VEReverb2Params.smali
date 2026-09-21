.class public Lcom/ss/android/vesdk/VEReverb2Params;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEReverb2Params$VEPresets;
    }
.end annotation


# instance fields
.field public bassb:F

.field public basslpf:F

.field public damplpf:F

.field public delay:F

.field public dry:F

.field public enable:Z

.field public enableExciter:Z

.field public ereffactor:F

.field public erefwet:F

.field public erefwidth:F

.field public ertolate:F

.field public inputlpf:F

.field public outputlpf:F

.field public oversamplefactor:I

.field public rate:I

.field public rt60:F

.field public spin:F

.field public wander:F

.field public wet:F

.field public width:F


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->enableExciter:Z

    .line 11
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->enable:Z

    const v1, 0xac44

    .line 12
    iput v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->rate:I

    .line 13
    iput v0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->oversamplefactor:I

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->ertolate:F

    .line 15
    iput v0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->erefwet:F

    .line 16
    iput v0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->dry:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 17
    iput v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->ereffactor:F

    .line 18
    iput v0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->erefwidth:F

    .line 19
    iput v0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->width:F

    .line 20
    iput v0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->wet:F

    const v1, 0x3dcccccd    # 0.1f

    .line 21
    iput v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->wander:F

    .line 22
    iput v0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->bassb:F

    .line 23
    iput v0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->spin:F

    const v2, 0x468ca000    # 18000.0f

    .line 24
    iput v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->inputlpf:F

    const v3, 0x44834000    # 1050.0f

    .line 25
    iput v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->basslpf:F

    .line 26
    iput v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->damplpf:F

    .line 27
    iput v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->outputlpf:F

    .line 28
    iput v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->rt60:F

    .line 29
    iput v0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->delay:F

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/ss/android/vesdk/VEReverb2Params;
    .registers 5

    .line 97
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 99
    :try_start_6
    new-instance v0, Lcom/ss/android/vesdk/VEReverb2Params;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEReverb2Params;-><init>()V

    const/4 v1, 0x0

    .line 101
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    move v2, v3

    goto :goto_18

    :cond_17
    move v2, v1

    :goto_18
    iput-boolean v2, v0, Lcom/ss/android/vesdk/VEReverb2Params;->enableExciter:Z

    .line 102
    aget-object v2, p0, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_23

    move v1, v3

    :cond_23
    iput-boolean v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->enable:Z

    const/4 v1, 0x2

    .line 103
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->rate:I

    const/4 v1, 0x3

    .line 104
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->oversamplefactor:I

    const/4 v1, 0x4

    .line 105
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->ertolate:F

    const/4 v1, 0x5

    .line 106
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->erefwet:F

    const/4 v1, 0x6

    .line 107
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->dry:F

    const/4 v1, 0x7

    .line 108
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->ereffactor:F

    const/16 v1, 0x8

    .line 109
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->erefwidth:F

    const/16 v1, 0x9

    .line 110
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->width:F

    const/16 v1, 0xa

    .line 111
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->wet:F

    const/16 v1, 0xb

    .line 112
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->wander:F

    const/16 v1, 0xc

    .line 113
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->bassb:F

    const/16 v1, 0xd

    .line 114
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->spin:F

    const/16 v1, 0xe

    .line 115
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->inputlpf:F

    const/16 v1, 0xf

    .line 116
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->basslpf:F

    const/16 v1, 0x10

    .line 117
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->damplpf:F

    const/16 v1, 0x11

    .line 118
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->outputlpf:F

    const/16 v1, 0x12

    .line 119
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEReverb2Params;->rt60:F

    const/16 v1, 0x13

    .line 120
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    iput p0, v0, Lcom/ss/android/vesdk/VEReverb2Params;->delay:F
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d3} :catch_d4

    return-object v0

    :catch_d4
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public copy()Lcom/ss/android/vesdk/VEReverb2Params;
    .registers 1

    .line 133
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEReverb2Params;->getParamsAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ss/android/vesdk/VEReverb2Params;->fromString(Ljava/lang/String;)Lcom/ss/android/vesdk/VEReverb2Params;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_ce

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_ce

    .line 67
    :cond_13
    check-cast p1, Lcom/ss/android/vesdk/VEReverb2Params;

    .line 68
    iget-boolean v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->enableExciter:Z

    iget-boolean v3, p1, Lcom/ss/android/vesdk/VEReverb2Params;->enableExciter:Z

    if-ne v2, v3, :cond_ce

    iget-boolean v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->enable:Z

    iget-boolean v3, p1, Lcom/ss/android/vesdk/VEReverb2Params;->enable:Z

    if-ne v2, v3, :cond_ce

    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->rate:I

    iget v3, p1, Lcom/ss/android/vesdk/VEReverb2Params;->rate:I

    if-ne v2, v3, :cond_ce

    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->oversamplefactor:I

    iget v3, p1, Lcom/ss/android/vesdk/VEReverb2Params;->oversamplefactor:I

    if-ne v2, v3, :cond_ce

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->ertolate:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->ertolate:F

    .line 72
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_ce

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->erefwet:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->erefwet:F

    .line 73
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_ce

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->dry:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->dry:F

    .line 74
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_ce

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->ereffactor:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->ereffactor:F

    .line 75
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_ce

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->erefwidth:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->erefwidth:F

    .line 76
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_ce

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->width:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->width:F

    .line 77
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_ce

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->wet:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->wet:F

    .line 78
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_ce

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->wander:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->wander:F

    .line 79
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_ce

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->bassb:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->bassb:F

    .line 80
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_ce

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->spin:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->spin:F

    .line 81
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_ce

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->inputlpf:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->inputlpf:F

    .line 82
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_ce

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->basslpf:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->basslpf:F

    .line 83
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_ce

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->damplpf:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->damplpf:F

    .line 84
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_ce

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->outputlpf:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->outputlpf:F

    .line 85
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_ce

    iget v2, p1, Lcom/ss/android/vesdk/VEReverb2Params;->rt60:F

    iget v3, p0, Lcom/ss/android/vesdk/VEReverb2Params;->rt60:F

    .line 86
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_ce

    iget p1, p1, Lcom/ss/android/vesdk/VEReverb2Params;->delay:F

    iget p0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->delay:F

    .line 87
    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_ce

    return v0

    :cond_ce
    :goto_ce
    return v1
.end method

.method public getParamsAsString()Ljava/lang/String;
    .registers 4

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->enableExciter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-boolean v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->enable:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->rate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->oversamplefactor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->ertolate:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->erefwet:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->dry:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->ereffactor:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->erefwidth:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->width:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->wet:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->wander:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->bassb:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->spin:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->inputlpf:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->basslpf:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->damplpf:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->outputlpf:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v2, p0, Lcom/ss/android/vesdk/VEReverb2Params;->rt60:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget p0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->delay:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverb2Params{enableExciter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->enableExciter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->rate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oversamplefactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->oversamplefactor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ertolate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->ertolate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", erefwet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->erefwet:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", dry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->dry:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ereffactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->ereffactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", erefwidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->erefwidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", wet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->wet:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", wander="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->wander:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bassb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->bassb:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", spin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->spin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", inputlpf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->inputlpf:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", basslpf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->basslpf:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", damplpf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->damplpf:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", outputlpf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->outputlpf:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rt60="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEReverb2Params;->rt60:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/VEReverb2Params;->delay:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
