.class public Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/StyleItemUI;
.super Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractItemUISpec;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUI;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractItemUISpec;)V

    return-void
.end method


# virtual methods
.method public supportItemInfoList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 27
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo;->itemList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
