.class public final synthetic Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyCustomConfigUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;

.field public final synthetic f$1:Lcom/transsion/camera/app/common/setting/SettingBase;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Lcom/transsion/camera/app/common/setting/SettingBase;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyCustomConfigUtils$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    iput-object p2, p0, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyCustomConfigUtils$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/app/common/setting/SettingBase;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyCustomConfigUtils$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    iget-object p0, p0, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyCustomConfigUtils$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/app/common/setting/SettingBase;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyCustomConfigUtils;->$r8$lambda$IrM1mKn3-pdR0xjKphFSsqH3udU(Ljava/util/Map;Lcom/transsion/camera/app/common/setting/SettingBase;Ljava/lang/String;)V

    return-void
.end method
