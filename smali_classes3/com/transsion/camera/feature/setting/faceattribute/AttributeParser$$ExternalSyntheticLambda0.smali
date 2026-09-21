.class public final synthetic Lcom/transsion/camera/feature/setting/faceattribute/AttributeParser$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeParser;->$r8$lambda$SKvau5yH2On3wzrU5NAriXgWbRI(Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Z

    move-result p0

    return p0
.end method
