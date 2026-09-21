.class public Lcom/transsion/camera/feature/mode/vlog/bean/TemplateItemData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private composeState:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "composeState"
    .end annotation
.end field

.field private final mediaItemList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mediaItemList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/cut_ui/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private templateItem:Lcom/cutsame/solution/template/model/TemplateItem;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "templateItem"
    .end annotation
.end field

.field private final textItemList:Ljava/util/List;
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


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateItemData;->composeState:I

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateItemData;->mediaItemList:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateItemData;->textItemList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILcom/cutsame/solution/template/model/TemplateItem;Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/cutsame/solution/template/model/TemplateItem;",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/cut_ui/MediaItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/cut_ui/TextItem;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateItemData;->composeState:I

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateItemData;->mediaItemList:Ljava/util/List;

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateItemData;->textItemList:Ljava/util/List;

    .line 34
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateItemData;->composeState:I

    .line 35
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateItemData;->templateItem:Lcom/cutsame/solution/template/model/TemplateItem;

    .line 36
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    invoke-interface {v1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getComposeState()I
    .registers 1

    .line 45
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateItemData;->composeState:I

    return p0
.end method

.method public getMediaItemList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/cut_ui/MediaItem;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateItemData;->mediaItemList:Ljava/util/List;

    return-object p0
.end method

.method public getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateItemData;->templateItem:Lcom/cutsame/solution/template/model/TemplateItem;

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

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateItemData;->textItemList:Ljava/util/List;

    return-object p0
.end method

.method public setComposeState(I)V
    .registers 2

    .line 41
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateItemData;->composeState:I

    return-void
.end method

.method public setMediaItemList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/cut_ui/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateItemData;->mediaItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateItemData;->mediaItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setTemplateItem(Lcom/cutsame/solution/template/model/TemplateItem;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateItemData;->templateItem:Lcom/cutsame/solution/template/model/TemplateItem;

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

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateItemData;->textItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateItemData;->textItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
