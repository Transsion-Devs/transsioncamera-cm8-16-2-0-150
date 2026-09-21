.class public Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private composeState:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "composeState"
    .end annotation
.end field

.field private demoAssetsCoverPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "demoAssetsCoverPath"
    .end annotation
.end field

.field private demoAssetsPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "demoAssetsPath"
    .end annotation
.end field

.field private localEndVideoPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "localEndVideoPath"
    .end annotation
.end field

.field private orientation:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "orientation"
    .end annotation
.end field

.field private templateItem:Lcom/cutsame/solution/template/model/TemplateItem;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "templateItem"
    .end annotation
.end field

.field private templateLocalZipPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "templateLocalZipPath"
    .end annotation
.end field

.field private textItemList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "textItemList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/cut_ui/TextItem;",
            ">;"
        }
    .end annotation
.end field

.field private vlogMediaItems:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mediaItemList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 225
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->vlogMediaItems:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->textItemList:Ljava/util/List;

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->composeState:I

    .line 38
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->orientation:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->vlogMediaItems:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->textItemList:Ljava/util/List;

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->composeState:I

    .line 38
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->orientation:I

    .line 214
    const-class v0, Lcom/cutsame/solution/template/model/TemplateItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cutsame/solution/template/model/TemplateItem;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->templateItem:Lcom/cutsame/solution/template/model/TemplateItem;

    .line 215
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->vlogMediaItems:Ljava/util/List;

    .line 216
    sget-object v0, Lcom/ss/android/ugc/cut_ui/TextItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->textItemList:Ljava/util/List;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->composeState:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->orientation:I

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->templateLocalZipPath:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->demoAssetsPath:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->demoAssetsCoverPath:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->localEndVideoPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copy()Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;
    .registers 1

    .line 55
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/utils/CloneUtil;->clone(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    return-object p0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getComposeState()I
    .registers 1

    .line 143
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->composeState:I

    return p0
.end method

.method public getDemoAssetsCoverPath()Ljava/lang/String;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->demoAssetsCoverPath:Ljava/lang/String;

    return-object p0
.end method

.method public getDemoAssetsPath()Ljava/lang/String;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->demoAssetsPath:Ljava/lang/String;

    return-object p0
.end method

.method public getFirstBlankIndex()I
    .registers 3

    const/4 v0, 0x0

    .line 87
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getVlogMediaItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 88
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getVlogMediaItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->isValid()Z

    move-result v1

    if-nez v1, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method public getLocalEndVideoPath()Ljava/lang/String;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->localEndVideoPath:Ljava/lang/String;

    return-object p0
.end method

.method public getMediaItem(I)Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;
    .registers 3

    if-ltz p1, :cond_13

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->vlogMediaItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_13

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->vlogMediaItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOrientation()I
    .registers 1

    .line 107
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->orientation:I

    return p0
.end method

.method public getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->templateItem:Lcom/cutsame/solution/template/model/TemplateItem;

    return-object p0
.end method

.method public getTemplateLocalZipPath()Ljava/lang/String;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->templateLocalZipPath:Ljava/lang/String;

    return-object p0
.end method

.method public getTextItemList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/cut_ui/TextItem;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->textItemList:Ljava/util/List;

    return-object p0
.end method

.method public getValidNumber()I
    .registers 3

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->vlogMediaItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_7
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    .line 78
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->isValid()Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1c
    return v0
.end method

.method public getVlogMediaItems()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->vlogMediaItems:Ljava/util/List;

    return-object p0
.end method

.method public isValid()Z
    .registers 2

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->vlogMediaItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    .line 67
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->isValid()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 199
    const-class v0, Lcom/cutsame/solution/template/model/TemplateItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cutsame/solution/template/model/TemplateItem;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->templateItem:Lcom/cutsame/solution/template/model/TemplateItem;

    .line 200
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->vlogMediaItems:Ljava/util/List;

    .line 201
    sget-object v0, Lcom/ss/android/ugc/cut_ui/TextItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->textItemList:Ljava/util/List;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->composeState:I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->orientation:I

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->templateLocalZipPath:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->demoAssetsPath:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->demoAssetsCoverPath:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->localEndVideoPath:Ljava/lang/String;

    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->composeState:I

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->vlogMediaItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    .line 61
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->reset()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public setComposeState(I)V
    .registers 2

    .line 139
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->composeState:I

    return-void
.end method

.method public setDemoAssetsCoverPath(Ljava/lang/String;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->demoAssetsCoverPath:Ljava/lang/String;

    return-void
.end method

.method public setDemoAssetsPath(Ljava/lang/String;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->demoAssetsPath:Ljava/lang/String;

    return-void
.end method

.method public setLocalEndVideoPath(Ljava/lang/String;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->localEndVideoPath:Ljava/lang/String;

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 111
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->orientation:I

    return-void
.end method

.method public setTemplateItem(Lcom/cutsame/solution/template/model/TemplateItem;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->templateItem:Lcom/cutsame/solution/template/model/TemplateItem;

    return-void
.end method

.method public setTemplateLocalZipPath(Ljava/lang/String;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->templateLocalZipPath:Ljava/lang/String;

    return-void
.end method

.method public setTextItemList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/cut_ui/TextItem;",
            ">;)V"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->textItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->textItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setVlogMediaItems(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;)V"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->vlogMediaItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->vlogMediaItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->templateItem:Lcom/cutsame/solution/template/model/TemplateItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 188
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->vlogMediaItems:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 189
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->textItemList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 190
    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->composeState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->orientation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->templateLocalZipPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->demoAssetsPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->demoAssetsCoverPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->localEndVideoPath:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
