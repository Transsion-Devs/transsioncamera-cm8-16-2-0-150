.class Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoundEffectAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$SoundEffectViewHolder;
    }
.end annotation


# instance fields
.field private final effectList:Ljava/util/List;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;


# direct methods
.method static bridge synthetic -$$Nest$mupdateItemViewState(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->updateItemViewState(I)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;Ljava/util/List;)V
    .registers 3

    .line 249
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 250
    iput-object p2, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->effectList:Ljava/util/List;

    return-void
.end method

.method private playSoundEffect(I)V
    .registers 8

    .line 326
    invoke-static {}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[playSoundEffect] position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mEffectSoundLoaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->-$$Nest$fgetmEffectSoundLoaded(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->-$$Nest$fgetmEffectSoundLoaded(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)Z

    move-result v0

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->-$$Nest$fgetmEffectSampleIds(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)[I

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_91

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->-$$Nest$fgetmEffectSampleIds(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_40
    if-ge v3, v1, :cond_50

    aget v4, v0, v3

    .line 329
    iget-object v5, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    iget-object v5, v5, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v5, :cond_4d

    .line 330
    invoke-interface {v5, v4}, Lcom/transsion/camera/utils/sound/IActionSound;->stop(I)V

    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 333
    :cond_50
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    iget-object v1, v0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v1, :cond_5f

    .line 334
    invoke-static {v0}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->-$$Nest$fgetmEffectSampleIds(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)[I

    move-result-object v0

    aget v0, v0, p1

    invoke-interface {v1, v0}, Lcom/transsion/camera/utils/sound/IActionSound;->play(I)V

    .line 336
    :cond_5f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->-$$Nest$fgetmShutterSoundPaths(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_91

    .line 337
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 338
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->-$$Nest$fgetmShutterSoundPaths(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)[Ljava/lang/String;

    move-result-object v1

    aget-object p1, v1, p1

    const-string v1, "shutterSoundAssetFileName"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_global_scope_secure"

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_91
    return-void
.end method

.method private updateItemViewState(I)V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 316
    :goto_2
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->effectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 317
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->-$$Nest$fgetmRecycleView(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$SoundEffectViewHolder;

    if-eqz v2, :cond_22

    .line 319
    iget-object v2, v2, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$SoundEffectViewHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    if-ne v1, p1, :cond_1e

    const/4 v3, 0x1

    goto :goto_1f

    :cond_1e
    move v3, v0

    :goto_1f
    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 322
    :cond_25
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->playSoundEffect(I)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    .line 312
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->effectList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 246
    check-cast p1, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$SoundEffectViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->onBindViewHolder(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$SoundEffectViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$SoundEffectViewHolder;I)V
    .registers 7

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->effectList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffect;

    .line 273
    iget-object v1, p1, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$SoundEffectViewHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffect;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->this$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_shutter_sound_optional"

    const-string v3, "off"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 277
    const-string v0, "1"

    .line 279
    :cond_31
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 280
    iget-object v0, p1, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$SoundEffectViewHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 281
    iget-object v0, p1, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$SoundEffectViewHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_58

    .line 284
    :cond_4a
    iget-object v0, p1, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$SoundEffectViewHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_58

    .line 285
    iget-object v0, p1, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$SoundEffectViewHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 289
    :cond_58
    :goto_58
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$1;-><init>(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 246
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$SoundEffectViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$SoundEffectViewHolder;
    .registers 5

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 265
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/camera/R$layout;->shutter_sound_optional_select_item_layout:I

    const/4 v1, 0x0

    .line 266
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 267
    new-instance p2, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$SoundEffectViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$SoundEffectViewHolder;-><init>(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;Landroid/view/View;)V

    return-object p2
.end method
