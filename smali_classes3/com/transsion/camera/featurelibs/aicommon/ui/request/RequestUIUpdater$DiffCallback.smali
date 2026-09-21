.class Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater$DiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DiffCallback"
.end annotation


# instance fields
.field private final mNewItems:Ljava/util/List;

.field private final mOldItems:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3

    .line 91
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater$DiffCallback;->mOldItems:Ljava/util/List;

    .line 93
    iput-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater$DiffCallback;->mNewItems:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater$DiffCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .registers 4

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater$DiffCallback;->mOldItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater$DiffCallback;->mNewItems:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;

    .line 115
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public areItemsTheSame(II)Z
    .registers 5

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater$DiffCallback;->mOldItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;->getId()J

    move-result-wide v0

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater$DiffCallback;->mNewItems:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;->getId()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public getNewListSize()I
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater$DiffCallback;->mNewItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getOldListSize()I
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestUIUpdater$DiffCallback;->mOldItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
