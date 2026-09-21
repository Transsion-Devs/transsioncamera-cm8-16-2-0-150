.class Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

.field final synthetic val$c:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2031
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$2;->this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$2;->val$c:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;

    iput p3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 2034
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 2037
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$2;->val$c:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;->-$$Nest$fgetkey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "off"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 2038
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$2;->this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$1500(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_21

    .line 2039
    const-string p1, "closed_reason_user"

    goto :goto_22

    :cond_21
    move-object p1, v1

    :goto_22
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$2;->this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    iget-object v2, v2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    .line 2040
    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;
    invoke-static {v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$1400(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    .line 2038
    const-string v3, "key_mu_face_beauty_closed_reason"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p1, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2041
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_54

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$2;->val$c:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;->-$$Nest$fgetfeatureId(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_54

    .line 2042
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$2;->this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_ai_enbale:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$mshowAutoHint(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;)V

    .line 2044
    :cond_54
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$2;->this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$2;->val$c:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;->-$$Nest$fgetkey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fputmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;)V

    .line 2045
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$2;->this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$1600(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder,TYPE_CHILD:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$2;->this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    iget-object v2, v2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$2;->val$c:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;->-$$Nest$fgetfeatureId(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2046
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$2;->this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    const-string v0, "key_facebeauty_remember"

    # invokes: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$1700(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;Ljava/lang/String;)V

    .line 2047
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$2;->this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mIsFaceBeautyConflictWithMakeUp:Z
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$1800(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Z

    move-result p1

    if-eqz p1, :cond_af

    .line 2048
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$2;->this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    const-string v0, "key_makeup_remember"

    # invokes: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$1900(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    :cond_af
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$2;->this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$2;->val$c:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$mupdateSetting(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;)V

    .line 2051
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$2;->this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$mupdateSeekBarUI(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V

    .line 2052
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$2;->this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    iget-object v0, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmSelectedPostion(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$2;->val$position:I

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->-$$Nest$mcheckCloseBlur(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;II)V

    .line 2053
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$2;->this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    iget v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$2;->val$position:I

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fputmSelectedPostion(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;I)V

    .line 2054
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$2;->this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$2;->val$c:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;->-$$Nest$fgetfeatureId(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;)I

    move-result p0

    invoke-static {p1, v0, p0, v4}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$mupdateItemProgress(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;IZ)V

    return-void
.end method
