.class Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$5;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->createLayoutManager(Landroid/content/Context;IIZ)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;Landroid/content/Context;IIZ)V
    .registers 6

    .line 251
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$5;->this$0:Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;

    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method


# virtual methods
.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 4

    .line 254
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 255
    invoke-static {}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLayoutCompleted: findLastVisibleItemPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$5;->this$0:Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->-$$Nest$fgetmCelebrityItemAdapter(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 257
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$5;->this$0:Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->-$$Nest$fgetmCelebrityItemAdapter(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->setLayoutCompleted(Z)V

    :cond_31
    return-void
.end method
