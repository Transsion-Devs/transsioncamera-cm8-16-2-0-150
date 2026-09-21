.class public final synthetic Lcom/transsion/camera/ui/setting/flash/FlashSettingUIEntry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIEntry$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIEntry$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIEntry;->$r8$lambda$bJWVr5j8AVjm9QoSvTaWPgAENM4(Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;)Lcom/transsion/camera/app/common/provider/ISettingUIFactory;

    move-result-object p0

    return-object p0
.end method
