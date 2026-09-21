.class public Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final category:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cover:Ljava/lang/String;

.field private final extra:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final orderId:Ljava/lang/String;

.field private final orientation:I

.field private final segmentDurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final templateItem:Lcom/cutsame/solution/template/model/TemplateItem;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/cutsame/solution/template/model/TemplateItem;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/cutsame/solution/template/model/TemplateItem;",
            "I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;->segmentDurations:Ljava/util/List;

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;->category:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;->id:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;->cover:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;->title:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;->orderId:Ljava/lang/String;

    .line 27
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    invoke-interface {v0, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 30
    invoke-interface {v1, p6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    iput-object p7, p0, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;->extra:Ljava/lang/String;

    .line 32
    iput-object p8, p0, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;->templateItem:Lcom/cutsame/solution/template/model/TemplateItem;

    .line 33
    iput p9, p0, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;->orientation:I

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;->category:Ljava/util/List;

    return-object p0
.end method

.method public getCover()Ljava/lang/String;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;->cover:Ljava/lang/String;

    return-object p0
.end method

.method public getExtra()Ljava/lang/String;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;->extra:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getOrderId()Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;->orderId:Ljava/lang/String;

    return-object p0
.end method

.method public getOrientation()I
    .registers 1

    .line 69
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;->orientation:I

    return p0
.end method

.method public getSegmentDurations()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;->segmentDurations:Ljava/util/List;

    return-object p0
.end method

.method public getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;->templateItem:Lcom/cutsame/solution/template/model/TemplateItem;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;->title:Ljava/lang/String;

    return-object p0
.end method
