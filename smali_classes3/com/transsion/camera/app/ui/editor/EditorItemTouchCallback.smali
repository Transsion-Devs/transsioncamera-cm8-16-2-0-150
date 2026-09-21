.class public Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# instance fields
.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mEditorMotionDetector:Lcom/transsion/camera/app/ui/editor/IEditorMotionDetector;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mModesNumberInTab:I

.field mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

.field private mScaledViewHolder:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/editor/IEditorMotionDetector;Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 6

    .line 44
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    const/4 v0, 0x6

    .line 36
    iput v0, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mModesNumberInTab:I

    .line 45
    iput-object p1, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mEditorMotionDetector:Lcom/transsion/camera/app/ui/editor/IEditorMotionDetector;

    .line 46
    iput-object p2, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    .line 47
    iput-object p3, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 48
    iput-object p4, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method


# virtual methods
.method public canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 4

    .line 197
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 16

    .line 126
    const-string v0, "clear view"

    const-string v1, "EditorItemTouchCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 128
    iget-object p1, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mEditorMotionDetector:Lcom/transsion/camera/app/ui/editor/IEditorMotionDetector;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/editor/IEditorMotionDetector;->getMotionState()I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_21a

    iget-object p1, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mEditorMotionDetector:Lcom/transsion/camera/app/ui/editor/IEditorMotionDetector;

    .line 129
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/editor/IEditorMotionDetector;->getMotionState()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1e

    goto/16 :goto_21a

    .line 132
    :cond_1e
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mCurrentCamera:Ljava/lang/String;

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "backarcoreposition"

    const-string v4, "frontarcoreposition"

    const/4 v5, -0x1

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mCurrentCamera:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    goto :goto_5c

    .line 137
    :cond_47
    iget-object v0, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_70

    .line 135
    :cond_5c
    :goto_5c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v5, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 139
    :goto_70
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ARCorePosition "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    .line 141
    :goto_87
    iget-object v8, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {v8}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getOrderEditorUIItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const-string v9, ","

    if-ge v6, v8, :cond_156

    .line 142
    iget-object v8, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {v8}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getMainModeCount()I

    move-result v8

    add-int/2addr v8, p2

    const-string v10, "com.transsion.camera.feature.arcore.ARCoreModeEntry"

    if-ne v6, v8, :cond_a8

    if-eqz v7, :cond_a8

    .line 143
    invoke-virtual {p1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a8
    if-ne v0, v6, :cond_e2

    .line 146
    iget-object v8, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v8}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result v8

    if-eqz v8, :cond_e2

    .line 147
    iget-object v8, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {v8}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getMainModeCount()I

    move-result v8

    const/4 v11, 0x1

    add-int/2addr v8, v11

    if-ge v6, v8, :cond_dc

    iget-object v8, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    .line 148
    invoke-virtual {v8}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getOrderEditorUIItems()Ljava/util/List;

    move-result-object v8

    iget-object v12, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {v12}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getMainModeCount()I

    move-result v12

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-virtual {v8}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v12, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {v12, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_dc

    move v7, v11

    goto :goto_e2

    .line 151
    :cond_dc
    invoke-virtual {p1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    :cond_e2
    :goto_e2
    iget-object v8, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v8}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result v8

    if-nez v8, :cond_13c

    iget-object v8, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {v8}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getOrderEditorUIItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-virtual {v8}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_13c

    .line 156
    iget-object v8, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    iget-object v8, v8, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mCurrentCamera:Ljava/lang/String;

    invoke-static {v8, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_12d

    iget-object v8, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    iget-object v8, v8, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mCurrentCamera:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v10

    invoke-virtual {v10}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_11d

    goto :goto_12d

    .line 159
    :cond_11d
    iget-object v8, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v11}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v4, v10, v11, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_13c

    .line 157
    :cond_12d
    :goto_12d
    iget-object v8, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v11}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v3, v10, v11, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 162
    :cond_13c
    :goto_13c
    iget-object v8, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {v8}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getOrderEditorUIItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-virtual {v8}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_87

    .line 165
    :cond_156
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "orderedModeNames add arcore after:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 167
    iget-object p2, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    iget-object p2, p2, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mCurrentCamera:Ljava/lang/String;

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1bb

    iget-object p2, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    iget-object p2, p2, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mCurrentCamera:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_192

    goto :goto_1bb

    .line 172
    :cond_192
    iget-object p2, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "frontmodesstring"

    invoke-virtual {p2, v3, v0, v2, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 173
    iget-object p2, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getMainModeCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 174
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    .line 173
    const-string v3, "frontmainmodescount"

    invoke-virtual {p2, v3, v0, v2, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1e3

    .line 168
    :cond_1bb
    :goto_1bb
    iget-object p2, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "backmodesstring"

    invoke-virtual {p2, v3, v0, v2, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 169
    iget-object p2, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getMainModeCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 170
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    .line 169
    const-string v3, "backmainmodescount"

    invoke-virtual {p2, v3, v0, v2, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 176
    :goto_1e3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getMainModeCount"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getMainModeCount()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " orderedModeNames: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object p1, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getFinalOrder()Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    .line 179
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getMainModeCount()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mCurrentCamera:Ljava/lang/String;

    .line 178
    invoke-interface {p1, p2, v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->updateCurrentModes(Ljava/util/List;ILjava/lang/String;)V

    :cond_21a
    :goto_21a
    return-void
.end method

.method public convertToAbsoluteDirection(II)I
    .registers 3

    .line 107
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result p0

    return p0
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 4

    .line 53
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p0

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-ne p0, p2, :cond_d

    .line 54
    invoke-static {v0, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0

    .line 56
    :cond_d
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    instance-of p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p0, :cond_1c

    const/16 p0, 0xf

    .line 60
    invoke-static {p0, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0

    :cond_1c
    const/4 p0, 0x3

    .line 64
    invoke-static {p0, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0
.end method

.method public isItemViewSwipeEnabled()Z
    .registers 1

    .line 190
    invoke-super {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->isItemViewSwipeEnabled()Z

    move-result p0

    return p0
.end method

.method public isLongPressDragEnabled()Z
    .registers 1

    .line 185
    invoke-super {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->isLongPressDragEnabled()Z

    move-result p0

    return p0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .registers 16

    .line 202
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p5

    .line 203
    iget-object v1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1e

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v6, p6

    move v7, p7

    move v5, v2

    move-object v2, p2

    goto :goto_42

    .line 206
    :cond_1e
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3a

    .line 207
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p5

    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p5, v0

    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p5, v0

    int-to-float p5, p5

    :cond_3a
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 209
    :goto_42
    invoke-super/range {v0 .. v7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 10

    .line 71
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 72
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 73
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_1d

    iget-object p2, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getMainModeCount()I

    move-result p2

    if-le v1, p2, :cond_1d

    .line 74
    iget-object p2, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getMainModeCount()I

    move-result v1

    :cond_1d
    const/4 p2, 0x1

    if-ge v1, p2, :cond_21

    return p2

    :cond_21
    const/4 v3, 0x6

    const/4 v4, 0x7

    if-le v0, v4, :cond_32

    .line 79
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v5

    if-ne v5, v2, :cond_32

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-ne v2, v3, :cond_32

    return p2

    :cond_32
    if-ne v1, v4, :cond_3b

    .line 82
    instance-of p3, p3, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$TitleItemHolder;

    if-eqz p3, :cond_3b

    if-le v0, v4, :cond_3b

    return p2

    .line 86
    :cond_3b
    iget-object p3, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getOrderEditorUIItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    .line 87
    iget-object v2, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getOrderEditorUIItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 88
    iget-object v2, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getOrderEditorUIItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-le v0, v4, :cond_a7

    if-ge v1, v4, :cond_a7

    .line 89
    iget-object p3, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getOrderEditorUIItems()Ljava/util/List;

    move-result-object p3

    const/16 v2, 0x8

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->isTitle()Z

    move-result p3

    if-eqz p3, :cond_a7

    .line 90
    iget-object p3, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getOrderEditorUIItems()Ljava/util/List;

    move-result-object p3

    invoke-static {p3, v4, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    if-le v0, v4, :cond_a7

    if-ge v1, v3, :cond_a7

    .line 91
    iget-object p3, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getOrderEditorUIItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v4, Lcom/transsion/camera/R$string;->asd_mode_title:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    .line 92
    iget-object p1, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->getOrderEditorUIItems()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v3, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 95
    :cond_a7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return p2
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 8

    .line 112
    instance-of v0, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;

    const-wide/16 v1, 0xc8

    if-eqz v0, :cond_39

    .line 113
    move-object v0, p1

    check-cast v0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;

    iget-object v3, v0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeIconView:Landroid/widget/ImageView;

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    const v4, 0x3f99999a    # 1.2f

    invoke-virtual {v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 114
    iget-object v3, v0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 115
    iput-object v0, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mScaledViewHolder:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;

    goto :goto_70

    :cond_39
    if-nez p1, :cond_70

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mScaledViewHolder:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;

    if-eqz v0, :cond_70

    .line 117
    iget-object v0, v0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeIconView:Landroid/widget/ImageView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mScaledViewHolder:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;->mScaledViewHolder:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;

    .line 121
    :cond_70
    :goto_70
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 102
    const-string p0, "EditorItemTouchCallback"

    const-string p1, "onSwiped: "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
