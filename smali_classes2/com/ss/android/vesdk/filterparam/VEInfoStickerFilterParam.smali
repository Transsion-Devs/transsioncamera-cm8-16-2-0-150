.class public Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;
.super Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam$VEStickerAnimationParam;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public alpha:F

.field public animationParam:Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam$VEStickerAnimationParam;

.field public degree:F

.field public endTime:I

.field public flipX:Z

.field public flipY:Z

.field public layer:I

.field public offsetX:F

.field public offsetY:F

.field public param:[Ljava/lang/String;

.field public resPath:Ljava/lang/String;

.field public scale:F

.field public startTime:I

.field public templateParam:Ljava/lang/String;

.field public useRichText:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 223
    new-instance v0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 100
    invoke-direct {p0}, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->param:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->useRichText:Z

    .line 39
    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->templateParam:Ljava/lang/String;

    const/4 v2, 0x0

    .line 54
    iput v2, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->degree:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 69
    iput v2, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->scale:F

    .line 74
    iput v2, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->alpha:F

    .line 84
    iput-boolean v1, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->flipX:Z

    .line 89
    iput-boolean v1, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->flipY:Z

    .line 94
    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->animationParam:Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam$VEStickerAnimationParam;

    .line 101
    const-string v0, "info sticker"

    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    const/16 v0, 0x9

    .line 102
    iput v0, p0, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterType:I

    const/4 v0, 0x1

    .line 103
    iput v0, p0, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterDurationType:I

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->resPath:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 206
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;-><init>(Landroid/os/Parcel;)V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->resPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->param:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->useRichText:Z

    .line 39
    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->templateParam:Ljava/lang/String;

    const/4 v2, 0x0

    .line 54
    iput v2, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->degree:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 69
    iput v2, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->scale:F

    .line 74
    iput v2, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->alpha:F

    .line 84
    iput-boolean v1, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->flipX:Z

    .line 89
    iput-boolean v1, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->flipY:Z

    .line 94
    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->animationParam:Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam$VEStickerAnimationParam;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->resPath:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->param:[Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_33

    move v0, v2

    goto :goto_34

    :cond_33
    move v0, v1

    :goto_34
    iput-boolean v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->useRichText:Z

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->offsetX:F

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->offsetY:F

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->degree:F

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->startTime:I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->endTime:I

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->scale:F

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->alpha:F

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->layer:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6e

    move v0, v2

    goto :goto_6f

    :cond_6e
    move v0, v1

    :goto_6f
    iput-boolean v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->flipX:Z

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_78

    move v1, v2

    :cond_78
    iput-boolean v1, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->flipY:Z

    .line 220
    const-class v0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam$VEStickerAnimationParam;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam$VEStickerAnimationParam;

    iput-object p1, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->animationParam:Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam$VEStickerAnimationParam;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VEInfoStickerFilterParam{resPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->resPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", param="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->param:[Ljava/lang/String;

    .line 244
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", useRichText="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->useRichText:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", offsetX="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->offsetX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", offsetY="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->offsetY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", degree="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->degree:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", startTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->startTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", endTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->endTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scale="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->scale:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", alpha="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->alpha:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", layer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->layer:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", flipX="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->flipX:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", flipY="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->flipY:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", animationParam="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->animationParam:Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam$VEStickerAnimationParam;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", filterType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", filterName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", filterDurationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterDurationType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 188
    invoke-super {p0, p1, p2}, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->writeToParcel(Landroid/os/Parcel;I)V

    .line 189
    iget-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->resPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->param:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 191
    iget-boolean v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->useRichText:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 192
    iget v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->offsetX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 193
    iget v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->offsetY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 194
    iget v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->degree:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 195
    iget v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->startTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->endTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->scale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 198
    iget v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->alpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 199
    iget v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->layer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-boolean v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->flipX:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 201
    iget-boolean v0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->flipY:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 202
    iget-object p0, p0, Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam;->animationParam:Lcom/ss/android/vesdk/filterparam/VEInfoStickerFilterParam$VEStickerAnimationParam;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
