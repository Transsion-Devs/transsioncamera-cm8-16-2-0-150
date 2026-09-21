.class public Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;
.super Lcom/transsion/widgetslib/view/damping/adapter/OSDampingAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/widgetslib/view/damping/adapter/OSDampingAdapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFunctionHolder:Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;

.field private mFunctionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;",
            ">;"
        }
    .end annotation
.end field

.field private final mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

.field private mModeHolder:Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;

.field private mModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;"
        }
    .end annotation
.end field

.field private mSaleHolder:Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;

.field private mSaleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$JMXWC7XiB59CxCerNpBoArUmeiQ(Ljava/util/List;Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;)Z
    .registers 2

    .line 164
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getModeName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$YEtQUsGVtW49GsCA6HWe83JkYCA(Ljava/util/List;Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;)Z
    .registers 2

    .line 179
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->getModeName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Guide_ImageGuideAdapter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;",
            ">;",
            "Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/adapter/OSDampingAdapter;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mSupportModes:Ljava/util/List;

    .line 49
    iput-object p3, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mSaleList:Ljava/util/List;

    .line 50
    iput-object p4, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mModeList:Ljava/util/List;

    .line 51
    iput-object p5, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mFunctionList:Ljava/util/List;

    .line 52
    iput-object p6, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    .line 54
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->initTypeList()V

    return-void
.end method

.method private getSupportModeDefaultList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 175
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-nez p2, :cond_c

    return-object p1

    .line 179
    :cond_c
    new-instance p1, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-interface {p0, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 181
    sget-object p1, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[getSupportModeDefaultList] filteredList: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ,size :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method private getSupportModeList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 160
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-nez p2, :cond_c

    return-object p1

    .line 164
    :cond_c
    new-instance p1, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {p0, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 166
    sget-object p1, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[getSupportModeList] filteredList: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ,size :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method private initTypeList()V
    .registers 5

    .line 59
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->DEFAULT_SALE_MODES:Ljava/util/List;

    .line 60
    sget-object v1, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->DEFAULT_MODES:Ljava/util/List;

    .line 61
    sget-object v2, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->DEFAULT_FUNCTIONS:Ljava/util/List;

    .line 63
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mTypeList:Ljava/util/List;

    .line 64
    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mSaleList:Ljava/util/List;

    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 65
    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mModeList:Ljava/util/List;

    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    .line 66
    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mFunctionList:Ljava/util/List;

    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v0, :cond_3d

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mTypeList:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3d
    if-nez v1, :cond_49

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mTypeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_49
    if-nez v2, :cond_55

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mTypeList:Ljava/util/List;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_55
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mTypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/adapter/OSDampingAdapter;->getHeaderCount()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mTypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 134
    :cond_a
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/adapter/OSDampingAdapter;->isHeaderPosition(I)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 p0, 0x91

    return p0

    .line 137
    :cond_13
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mTypeList:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 5

    .line 106
    instance-of p2, p1, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;

    if-eqz p2, :cond_1d

    .line 107
    check-cast p1, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;

    .line 108
    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mSaleList:Ljava/util/List;

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mSupportModes:Ljava/util/List;

    invoke-direct {p0, p2, v0}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->getSupportModeList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->DEFAULT_SALE_MODES:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mSupportModes:Ljava/util/List;

    .line 109
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->getSupportModeDefaultList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 108
    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;->updateSaleList(Ljava/util/List;Ljava/util/List;)V

    .line 110
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;->onBindViewHolder()V

    return-void

    .line 111
    :cond_1d
    instance-of p2, p1, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;

    if-eqz p2, :cond_3a

    .line 112
    check-cast p1, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;

    .line 113
    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mModeList:Ljava/util/List;

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mSupportModes:Ljava/util/List;

    invoke-direct {p0, p2, v0}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->getSupportModeList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->DEFAULT_MODES:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mSupportModes:Ljava/util/List;

    .line 114
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->getSupportModeDefaultList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 113
    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->updateModeList(Ljava/util/List;Ljava/util/List;)V

    .line 115
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->onBindViewHolder()V

    return-void

    .line 116
    :cond_3a
    instance-of p2, p1, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;

    if-eqz p2, :cond_4a

    .line 117
    check-cast p1, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;

    .line 118
    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mFunctionList:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mSupportModes:Ljava/util/List;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->updateFunctionList(Ljava/util/List;Ljava/util/List;)V

    .line 119
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->onBindViewHolder()V

    :cond_4a
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5

    const/16 v0, 0x91

    if-ne p2, v0, :cond_9

    .line 83
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/adapter/OSDampingAdapter;->getHeaderHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_27

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/camera/feature/imageryguide/R$layout;->sale_view_holder:I

    .line 86
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 87
    new-instance p2, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    invoke-direct {p2, p1, v0, v1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;-><init>(Landroid/view/View;Landroid/content/Context;Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mSaleHolder:Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;

    return-object p2

    :cond_27
    const/4 v0, 0x2

    if-ne p2, v0, :cond_44

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/camera/feature/imageryguide/R$layout;->mode_view_holder:I

    .line 91
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 92
    new-instance p2, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    invoke-direct {p2, p1, v0, v1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;-><init>(Landroid/view/View;Landroid/content/Context;Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mModeHolder:Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;

    return-object p2

    :cond_44
    const/4 v0, 0x3

    if-ne p2, v0, :cond_61

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/camera/feature/imageryguide/R$layout;->function_view_holder:I

    .line 96
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 97
    new-instance p2, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    invoke-direct {p2, p1, v0, v1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;-><init>(Landroid/view/View;Landroid/content/Context;Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mFunctionHolder:Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;

    return-object p2

    :cond_61
    const/4 p0, 0x0

    return-object p0
.end method

.method public setEnable(Z)V
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mSaleHolder:Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/SaleHolder;->setEnable(Z)V

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mModeHolder:Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->setEnable(Z)V

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mFunctionHolder:Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->setEnable(Z)V

    return-void
.end method

.method public updateDataList(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;",
            ">;)V"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mSaleList:Ljava/util/List;

    .line 143
    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mModeList:Ljava/util/List;

    .line 144
    iput-object p3, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->mFunctionList:Ljava/util/List;

    .line 146
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
