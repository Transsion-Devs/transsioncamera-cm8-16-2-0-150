.class public final synthetic Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;II)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager$$ExternalSyntheticLambda5;->f$0:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;

    iput p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager$$ExternalSyntheticLambda5;->f$1:I

    iput p3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager$$ExternalSyntheticLambda5;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager$$ExternalSyntheticLambda5;->f$0:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;

    iget v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager$$ExternalSyntheticLambda5;->f$1:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager$$ExternalSyntheticLambda5;->f$2:I

    check-cast p1, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;->$r8$lambda$GAdId_kSxbs8avQR-5HRukKJqSA(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ItemUIManager;IILcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;)V

    return-void
.end method
