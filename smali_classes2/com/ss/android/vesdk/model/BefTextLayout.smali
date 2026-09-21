.class public Lcom/ss/android/vesdk/model/BefTextLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field backColor:J

.field charSize:I

.field familyName:Ljava/lang/String;

.field isPlaceholder:Z

.field letterSpacing:I

.field lineCount:I

.field lineHeight:F

.field lineWidth:I

.field split:I

.field textAlign:I

.field textColor:J

.field textIndent:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFromByteArray([[B)Lcom/ss/android/vesdk/model/BefTextLayout;
    .registers 4

    .line 143
    new-instance v0, Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Lcom/ss/android/ttve/nativePort/TEParcelWrapper;-><init>([B)V

    .line 144
    new-instance p0, Lcom/ss/android/vesdk/model/BefTextLayout;

    invoke-direct {p0}, Lcom/ss/android/vesdk/model/BefTextLayout;-><init>()V

    .line 145
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readLong()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/ss/android/vesdk/model/BefTextLayout;->setBackColor(J)V

    .line 146
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/model/BefTextLayout;->setCharSize(I)V

    .line 147
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/model/BefTextLayout;->setFamilyName(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/model/BefTextLayout;->setLetterSpacing(I)V

    .line 149
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/model/BefTextLayout;->setLineCount(I)V

    .line 150
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/model/BefTextLayout;->setLineHeight(F)V

    .line 151
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/model/BefTextLayout;->setLineWidth(I)V

    .line 152
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readBoolean()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/model/BefTextLayout;->setPlaceholder(Z)V

    .line 153
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/model/BefTextLayout;->setSplit(I)V

    .line 154
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/model/BefTextLayout;->setTextAlign(I)V

    .line 155
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readLong()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/ss/android/vesdk/model/BefTextLayout;->setTextColor(J)V

    .line 156
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEParcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/model/BefTextLayout;->setTextIndent(I)V

    return-object p0
.end method


# virtual methods
.method public getBackColor()J
    .registers 3

    .line 104
    iget-wide v0, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->backColor:J

    return-wide v0
.end method

.method public getCharSize()I
    .registers 1

    .line 24
    iget p0, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->charSize:I

    return p0
.end method

.method public getFamilyName()Ljava/lang/String;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->familyName:Ljava/lang/String;

    return-object p0
.end method

.method public getLetterSpacing()I
    .registers 1

    .line 32
    iget p0, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->letterSpacing:I

    return p0
.end method

.method public getLineCount()I
    .registers 1

    .line 80
    iget p0, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->lineCount:I

    return p0
.end method

.method public getLineHeight()F
    .registers 1

    .line 48
    iget p0, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->lineHeight:F

    return p0
.end method

.method public getLineWidth()I
    .registers 1

    .line 40
    iget p0, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->lineWidth:I

    return p0
.end method

.method public getSplit()I
    .registers 1

    .line 72
    iget p0, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->split:I

    return p0
.end method

.method public getTextAlign()I
    .registers 1

    .line 56
    iget p0, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->textAlign:I

    return p0
.end method

.method public getTextColor()J
    .registers 3

    .line 96
    iget-wide v0, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->textColor:J

    return-wide v0
.end method

.method public getTextIndent()I
    .registers 1

    .line 64
    iget p0, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->textIndent:I

    return p0
.end method

.method public isPlaceholder()Z
    .registers 1

    .line 112
    iget-boolean p0, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->isPlaceholder:Z

    return p0
.end method

.method public setBackColor(J)V
    .registers 3

    .line 108
    iput-wide p1, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->backColor:J

    return-void
.end method

.method public setCharSize(I)V
    .registers 2

    .line 28
    iput p1, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->charSize:I

    return-void
.end method

.method public setFamilyName(Ljava/lang/String;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->familyName:Ljava/lang/String;

    return-void
.end method

.method public setLetterSpacing(I)V
    .registers 2

    .line 36
    iput p1, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->letterSpacing:I

    return-void
.end method

.method public setLineCount(I)V
    .registers 2

    .line 84
    iput p1, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->lineCount:I

    return-void
.end method

.method public setLineHeight(F)V
    .registers 2

    .line 52
    iput p1, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->lineHeight:F

    return-void
.end method

.method public setLineWidth(I)V
    .registers 2

    .line 44
    iput p1, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->lineWidth:I

    return-void
.end method

.method public setPlaceholder(Z)V
    .registers 2

    .line 116
    iput-boolean p1, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->isPlaceholder:Z

    return-void
.end method

.method public setSplit(I)V
    .registers 2

    .line 76
    iput p1, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->split:I

    return-void
.end method

.method public setTextAlign(I)V
    .registers 2

    .line 60
    iput p1, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->textAlign:I

    return-void
.end method

.method public setTextColor(J)V
    .registers 3

    .line 100
    iput-wide p1, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->textColor:J

    return-void
.end method

.method public setTextIndent(I)V
    .registers 2

    .line 68
    iput p1, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->textIndent:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefTextLayout{charSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->charSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", letterSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->letterSpacing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lineWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->lineWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lineHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->lineHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", textAlign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->textAlign:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textIndent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->textIndent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", split="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->split:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lineCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->lineCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", familyName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->familyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", textColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->textColor:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", backColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->backColor:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isPlaceholder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/ss/android/vesdk/model/BefTextLayout;->isPlaceholder:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
