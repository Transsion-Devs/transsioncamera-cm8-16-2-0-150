.class Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$3;
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

.field final synthetic val$position:I

.field final synthetic val$s:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2084
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$3;->this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$3;->val$s:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;

    iput p3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 2087
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 2090
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$3;->this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$3;->val$s:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;->-$$Nest$fgetkey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fputmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;)V

    .line 2091
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$3;->this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$2100(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder,TYPE_SKIN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$3;->this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    iget-object v1, v1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2092
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$3;->this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    const-string v0, "key_facebeauty_remember"

    const/4 v1, 0x0

    # invokes: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$2200(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;Ljava/lang/String;)V

    .line 2093
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$3;->this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mIsFaceBeautyConflictWithMakeUp:Z
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$2300(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 2094
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$3;->this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    const-string v0, "key_makeup_remember"

    # invokes: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$2400(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;Ljava/lang/String;)V

    .line 2096
    :cond_55
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$3;->this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$3;->val$s:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;->-$$Nest$fgetkey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$3;->val$s:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;->-$$Nest$fgetfeatureId(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$mupdateSetting(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;I)V

    .line 2097
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$3;->this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$mupdateSeekBarUI(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V

    .line 2098
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$3;->this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    iget-object v0, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmSelectedPostion(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$3;->val$position:I

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->-$$Nest$mcheckCloseBlur(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;II)V

    .line 2099
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$3;->this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$3;->val$position:I

    invoke-static {p1, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fputmSelectedPostion(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;I)V

    return-void
.end method
