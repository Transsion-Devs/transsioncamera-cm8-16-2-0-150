.class public Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private source:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source"
    .end annotation
.end field

.field private final templateItemDataList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "templateItemDataList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->id:I

    .line 14
    const-string v1, ""

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->name:Ljava/lang/String;

    .line 17
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->source:I

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->templateItemDataList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->id:I

    .line 14
    const-string v1, ""

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->name:Ljava/lang/String;

    .line 17
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->source:I

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->templateItemDataList:Ljava/util/List;

    .line 26
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->id:I

    .line 27
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->name:Ljava/lang/String;

    .line 28
    iput p3, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->source:I

    .line 29
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 30
    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getId()I
    .registers 1

    .line 38
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->id:I

    return p0
.end method

.method public getItemList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->templateItemDataList:Ljava/util/List;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getSource()I
    .registers 1

    .line 54
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->source:I

    return p0
.end method

.method public setId(I)V
    .registers 2

    .line 34
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->id:I

    return-void
.end method

.method public setItemList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;",
            ">;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->templateItemDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->templateItemDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setSource(I)V
    .registers 2

    .line 50
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->source:I

    return-void
.end method
