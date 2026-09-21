.class Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$3;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$3;->this$0:Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 9

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI$3;->this$0:Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;->-$$Nest$fgetmResources(Lcom/transsion/camera/ui/setting/celebrityscene/CelebritySceneSettingUI;)Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/R$dimen;->celebrity_scene_background_radius:I

    .line 180
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float v5, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    .line 179
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
