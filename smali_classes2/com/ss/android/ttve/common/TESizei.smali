.class public Lcom/ss/android/ttve/common/TESizei;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2d0

    .line 8
    iput v0, p0, Lcom/ss/android/ttve/common/TESizei;->width:I

    const/16 v0, 0x500

    .line 9
    iput v0, p0, Lcom/ss/android/ttve/common/TESizei;->height:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/ss/android/ttve/common/TESizei;->width:I

    .line 16
    iput p2, p0, Lcom/ss/android/ttve/common/TESizei;->height:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 26
    instance-of v0, p1, Lcom/ss/android/ttve/common/TESizei;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 29
    :cond_6
    check-cast p1, Lcom/ss/android/ttve/common/TESizei;

    .line 30
    iget v0, p0, Lcom/ss/android/ttve/common/TESizei;->width:I

    iget v2, p1, Lcom/ss/android/ttve/common/TESizei;->width:I

    if-ne v0, v2, :cond_16

    iget p0, p0, Lcom/ss/android/ttve/common/TESizei;->height:I

    iget p1, p1, Lcom/ss/android/ttve/common/TESizei;->height:I

    if-ne p0, p1, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    return v1
.end method

.method public hashCode()I
    .registers 3

    const v0, 0x10001

    .line 36
    iget v1, p0, Lcom/ss/android/ttve/common/TESizei;->width:I

    mul-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    iget p0, p0, Lcom/ss/android/ttve/common/TESizei;->height:I

    add-int/2addr v1, p0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/ss/android/ttve/common/TESizei;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttve/common/TESizei;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
