.class Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModeAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter$recyclerViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultModeDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;",
            ">;"
        }
    .end annotation
.end field

.field private final mModeDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;


# direct methods
.method public static synthetic $r8$lambda$T1rY_5Ntq60cZ_XynRA4VLjKJUE(Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;->lambda$onBindViewHolder$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zQ3Axo2Nzl7U429VFKW_IrRP9c8(Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter$recyclerViewHolder;)V
    .registers 2

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter$recyclerViewHolder;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;",
            ">;",
            "Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;",
            ")V"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;->this$0:Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 119
    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;->mContext:Landroid/content/Context;

    .line 120
    iput-object p3, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;->mModeDataList:Ljava/util/List;

    .line 121
    iput-object p4, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;->mDefaultModeDataList:Ljava/util/List;

    .line 122
    invoke-static {p1, p5}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->-$$Nest$fputmGuideManagerListener(Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Landroid/view/View;)V
    .registers 7

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;->this$0:Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->-$$Nest$fgetmGuideManagerListener(Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;)Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    move-result-object v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;->this$0:Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->-$$Nest$fgetmEnable(Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 153
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->MODE_ENTRY_MODENAME_MAP:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_31

    .line 155
    :cond_2f
    sget v0, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_asd_mode_title:I

    .line 156
    :goto_31
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.transsion.camera"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 157
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;->mContext:Landroid/content/Context;

    .line 159
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_analytics_mode:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "^"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;->mContext:Landroid/content/Context;

    .line 161
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x27

    .line 158
    invoke-virtual {v1, v2, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 163
    :cond_72
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;->this$0:Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;

    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->-$$Nest$fgetmGuideManagerListener(Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;)Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;->onClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_82
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;->mModeDataList:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;->mDefaultModeDataList:Ljava/util/List;

    invoke-static {v0, p0}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 6

    .line 134
    check-cast p1, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter$recyclerViewHolder;

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;->mModeDataList:Ljava/util/List;

    if-eqz v0, :cond_69

    .line 137
    iget-object v1, p1, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter$recyclerViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getModeImgFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/feature/imageryguide/utils/FileUtils;->getDrawableFromFilePath(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->MODE_ENTRY_MODENAME_MAP:Ljava/util/Map;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;->mModeDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getModeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 139
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;->mModeDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getModeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_48

    .line 140
    :cond_46
    sget v0, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_asd_mode_title:I

    .line 141
    :goto_48
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    iget-object v1, p1, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter$recyclerViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;->mModeDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getModeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_9c

    .line 145
    :cond_69
    iget-object v0, p1, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter$recyclerViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;->mDefaultModeDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->getImgResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    iget-object v0, p1, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter$recyclerViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;->mDefaultModeDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;->mDefaultModeDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->getModeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 150
    :goto_9c
    iget-object p2, p1, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter$recyclerViewHolder;->mTextView:Landroid/widget/TextView;

    new-instance v0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter$recyclerViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 151
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 6

    .line 128
    new-instance p2, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter$recyclerViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/imageryguide/R$layout;->mode_item_view:I

    const/4 v2, 0x0

    .line 129
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter$recyclerViewHolder;-><init>(Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setEnable(Z)V
    .registers 2

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;->this$0:Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->-$$Nest$fputmEnable(Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;Z)V

    return-void
.end method
