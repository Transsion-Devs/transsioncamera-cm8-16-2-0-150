.class Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->setupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;

.field final synthetic val$linearLayoutManager:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$LinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$LinearLayoutManager;)V
    .registers 3

    .line 149
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$1;->val$linearLayoutManager:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$LinearLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method private notifyItemScrolled()V
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->-$$Nest$fgetmTemplateListener(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;)Lcom/transsion/camera/feature/mode/aigc/setting/ui/ITemplateListener;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$1;->val$linearLayoutManager:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_2a

    .line 176
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->-$$Nest$fgetmTemplateAdapter(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;)Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;->getItem(I)Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->-$$Nest$fgetmTemplateListener(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;)Lcom/transsion/camera/feature/mode/aigc/setting/ui/ITemplateListener;

    move-result-object p0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;->getTemplate()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/ITemplateListener;->onTemplateScrolled(Ljava/lang/String;)V

    :cond_2a
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 5

    .line 164
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 165
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScrollStateChanged newState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p2, :cond_26

    .line 167
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->-$$Nest$fputmIndicatorClickedScroll(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;Z)V

    .line 168
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$1;->notifyItemScrolled()V

    :cond_26
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    .line 153
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 155
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->-$$Nest$fgetmIndicatorClickedScroll(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;)Z

    move-result p1

    if-eqz p1, :cond_c

    return-void

    .line 159
    :cond_c
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$1;->notifyItemScrolled()V

    return-void
.end method
