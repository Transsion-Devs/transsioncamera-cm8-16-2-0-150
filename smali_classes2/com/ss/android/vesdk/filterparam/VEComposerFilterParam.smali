.class public Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;
.super Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VEComposerFilterParam"

.field private static final VEComposerAppendWithTag:I = 0x10

.field private static final VEComposerReloadWithTag:I = 0x4

.field private static final VEComposerRemove:I = 0x20

.field private static final VEComposerReplaceWithTag:I = 0x40

.field private static final VEComposerSetMode:I = 0x2

.field private static final VEComposerSetNodesWithTag:I = 0x1

.field private static final VEComposerUpdateMulti:I = 0x8


# instance fields
.field private action:I

.field public autoDump:Z

.field private mode:I

.field private nodePaths:[Ljava/lang/String;

.field private oldNodePaths:[Ljava/lang/String;

.field private orderType:I

.field private tags:[Ljava/lang/String;

.field private updateNodeKeys:[Ljava/lang/String;

.field private updateNodeValues:[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 271
    new-instance v0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->autoDump:Z

    .line 66
    const-string v0, "composer filter"

    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    const/16 v0, 0x12

    .line 67
    iput v0, p0, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterType:I

    const/4 v0, 0x1

    .line 68
    iput v0, p0, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterDurationType:I

    .line 69
    invoke-direct {p0}, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->reset()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 260
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->autoDump:Z

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->mode:I

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->orderType:I

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->action:I

    .line 264
    iget-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->oldNodePaths:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->nodePaths:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->tags:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->updateNodeKeys:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 268
    iget-object p0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->updateNodeValues:[F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readFloatArray([F)V

    return-void
.end method

.method private reset()V
    .registers 2

    const/4 v0, 0x0

    .line 231
    iput v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->mode:I

    .line 232
    iput v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->orderType:I

    .line 233
    iput v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->action:I

    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->oldNodePaths:[Ljava/lang/String;

    .line 235
    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->nodePaths:[Ljava/lang/String;

    .line 236
    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->tags:[Ljava/lang/String;

    .line 237
    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->updateNodeKeys:[Ljava/lang/String;

    .line 238
    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->updateNodeValues:[F

    return-void
.end method


# virtual methods
.method public appendComposerNodesWithTag([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 147
    invoke-direct {p0}, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->reset()V

    const/16 v0, 0x10

    .line 148
    iput v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->action:I

    .line 149
    iput-object p1, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->nodePaths:[Ljava/lang/String;

    .line 150
    iput-object p2, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->tags:[Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isOverallComposer()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isValid()Z
    .registers 7

    .line 190
    iget v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->action:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_45

    const/4 v3, 0x4

    if-eq v0, v3, :cond_45

    const/16 v3, 0x8

    if-eq v0, v3, :cond_30

    const/16 v3, 0x10

    if-eq v0, v3, :cond_45

    const/16 v3, 0x20

    if-eq v0, v3, :cond_2b

    const/16 v3, 0x40

    if-eq v0, v3, :cond_1a

    goto :goto_52

    .line 209
    :cond_1a
    iget-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->oldNodePaths:[Ljava/lang/String;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->nodePaths:[Ljava/lang/String;

    if-eqz v0, :cond_53

    iget-object v3, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->tags:[Ljava/lang/String;

    if-eqz v3, :cond_53

    array-length v0, v0

    array-length v3, v3

    if-eq v0, v3, :cond_52

    goto :goto_53

    .line 204
    :cond_2b
    iget-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->nodePaths:[Ljava/lang/String;

    if-nez v0, :cond_52

    goto :goto_53

    .line 199
    :cond_30
    iget-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->nodePaths:[Ljava/lang/String;

    if-eqz v0, :cond_53

    iget-object v3, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->updateNodeKeys:[Ljava/lang/String;

    if-eqz v3, :cond_53

    iget-object v4, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->updateNodeValues:[F

    if-eqz v4, :cond_53

    array-length v0, v0

    array-length v5, v3

    if-ne v0, v5, :cond_53

    array-length v0, v3

    array-length v3, v4

    if-eq v0, v3, :cond_52

    goto :goto_53

    .line 194
    :cond_45
    iget-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->nodePaths:[Ljava/lang/String;

    if-eqz v0, :cond_53

    iget-object v3, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->tags:[Ljava/lang/String;

    if-eqz v3, :cond_53

    array-length v0, v0

    array-length v3, v3

    if-eq v0, v3, :cond_52

    goto :goto_53

    :cond_52
    :goto_52
    move v1, v2

    :cond_53
    :goto_53
    if-nez v1, :cond_72

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValid, action: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->action:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", param invalid"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VEComposerFilterParam"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    return v1
.end method

.method public reloadComposerNodesWithTag([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 113
    invoke-direct {p0}, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->reset()V

    const/4 v0, 0x4

    .line 114
    iput v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->action:I

    .line 115
    iput-object p1, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->nodePaths:[Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->tags:[Ljava/lang/String;

    return-void
.end method

.method public removeComposerNodes([Ljava/lang/String;)V
    .registers 3

    .line 161
    invoke-direct {p0}, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->reset()V

    const/16 v0, 0x20

    .line 162
    iput v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->action:I

    .line 163
    iput-object p1, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->nodePaths:[Ljava/lang/String;

    return-void
.end method

.method public replaceComposerNodesWithTag([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    .line 176
    invoke-direct {p0}, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->reset()V

    const/16 v0, 0x40

    .line 177
    iput v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->action:I

    .line 178
    iput-object p1, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->oldNodePaths:[Ljava/lang/String;

    .line 179
    iput-object p2, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->nodePaths:[Ljava/lang/String;

    .line 180
    iput-object p3, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->tags:[Ljava/lang/String;

    return-void
.end method

.method public setComposerMode(II)V
    .registers 4

    .line 97
    invoke-direct {p0}, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->reset()V

    const/4 v0, 0x2

    .line 98
    iput v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->action:I

    .line 99
    iput p1, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->mode:I

    .line 100
    iput p2, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->orderType:I

    return-void
.end method

.method public setComposerNodesWithTag([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 82
    invoke-direct {p0}, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->reset()V

    const/4 v0, 0x1

    .line 83
    iput v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->action:I

    .line 84
    iput-object p1, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->nodePaths:[Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->tags:[Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VEComposerFilterParam{mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", orderType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->orderType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", action=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", oldNodePaths=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->oldNodePaths:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", nodePaths=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->nodePaths:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tags=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->tags:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", updateNodekeys=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->updateNodeKeys:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", updateNodeValues=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->updateNodeValues:[F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateMultiComposerNodes([Ljava/lang/String;[Ljava/lang/String;[F)V
    .registers 5

    .line 130
    invoke-direct {p0}, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->reset()V

    const/16 v0, 0x8

    .line 131
    iput v0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->action:I

    .line 132
    iput-object p1, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->nodePaths:[Ljava/lang/String;

    .line 133
    iput-object p2, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->updateNodeKeys:[Ljava/lang/String;

    .line 134
    iput-object p3, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->updateNodeValues:[F

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 248
    invoke-super {p0, p1, p2}, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->writeToParcel(Landroid/os/Parcel;I)V

    .line 249
    iget p2, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->mode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget p2, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->orderType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget p2, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->action:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget-object p2, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->oldNodePaths:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 253
    iget-object p2, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->nodePaths:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 254
    iget-object p2, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->tags:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 255
    iget-object p2, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->updateNodeKeys:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 256
    iget-object p0, p0, Lcom/ss/android/vesdk/filterparam/VEComposerFilterParam;->updateNodeValues:[F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloatArray([F)V

    return-void
.end method
