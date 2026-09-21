.class Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/pmaster/adapter/ExpandableItemAdapter$ExpandableToggleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V
    .registers 2

    .line 448
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$7;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private saveExpandState(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V
    .registers 6

    .line 460
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$7;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$000(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    if-nez v0, :cond_12

    .line 461
    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "saveExpandState mDataStore is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 464
    :cond_12
    instance-of v0, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;

    if-eqz v0, :cond_4d

    .line 465
    check-cast p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;

    .line 466
    iget-boolean v0, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->isExpand:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_22
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 467
    :goto_27
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$7;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$200(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;->key:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_expand"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$7;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    .line 468
    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$100(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    .line 467
    invoke-virtual {v2, p1, v0, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4d
    return-void
.end method


# virtual methods
.method public onCollapse(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V
    .registers 2

    .line 456
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$7;->saveExpandState(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V

    return-void
.end method

.method public onExpand(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V
    .registers 2

    .line 451
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$7;->saveExpandState(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V

    return-void
.end method
