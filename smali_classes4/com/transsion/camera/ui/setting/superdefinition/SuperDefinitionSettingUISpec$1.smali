.class Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;)V
    .registers 9

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$1;->this$0:Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/16 p1, 0x10

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;

    sget v3, Lcom/transsion/camera/R$drawable;->super_definition_16m_off:I

    const/4 v4, 0x0

    sget v5, Lcom/transsion/camera/R$drawable;->super_definition_16m_on:I

    const/16 v1, 0x10

    const/16 v2, 0x10

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;-><init>(IIIIII)V

    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x20

    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;

    sget v3, Lcom/transsion/camera/R$drawable;->super_definition_32m_off:I

    sget v5, Lcom/transsion/camera/R$drawable;->super_definition_32m_on:I

    const/16 v1, 0x20

    const/16 v2, 0x20

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;-><init>(IIIIII)V

    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x28

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;

    sget v3, Lcom/transsion/camera/R$drawable;->super_definition_40m_off:I

    sget v5, Lcom/transsion/camera/R$drawable;->super_definition_40m_on:I

    const/16 v1, 0x28

    const/16 v2, 0x28

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;-><init>(IIIIII)V

    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x30

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;

    sget v3, Lcom/transsion/camera/R$drawable;->super_definition_48m_off:I

    sget v5, Lcom/transsion/camera/R$drawable;->super_definition_48m_on:I

    const/16 v1, 0x30

    const/16 v2, 0x30

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;-><init>(IIIIII)V

    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x32

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;

    sget v3, Lcom/transsion/camera/R$drawable;->super_definition_50m_off:I

    sget v5, Lcom/transsion/camera/R$drawable;->super_definition_50m_on:I

    const/16 v1, 0x32

    const/16 v2, 0x32

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;-><init>(IIIIII)V

    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x3c

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;

    sget v3, Lcom/transsion/camera/R$drawable;->super_definition_60m_off:I

    sget v5, Lcom/transsion/camera/R$drawable;->super_definition_60m_on:I

    const/16 v1, 0x3c

    const/16 v2, 0x3c

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;-><init>(IIIIII)V

    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x40

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;

    sget v3, Lcom/transsion/camera/R$drawable;->super_definition_64m_off:I

    sget v5, Lcom/transsion/camera/R$drawable;->super_definition_64m_on:I

    const/16 v1, 0x40

    const/16 v2, 0x40

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;-><init>(IIIIII)V

    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x64

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;

    sget v3, Lcom/transsion/camera/R$drawable;->super_definition_100m_off:I

    sget v5, Lcom/transsion/camera/R$drawable;->super_definition_100m_on:I

    const/16 v1, 0x64

    const/16 v2, 0x64

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;-><init>(IIIIII)V

    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x6c

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;

    sget v3, Lcom/transsion/camera/R$drawable;->super_definition_108m_off:I

    sget v5, Lcom/transsion/camera/R$drawable;->super_definition_108m_on:I

    const/16 v1, 0x6c

    const/16 v2, 0x6c

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;-><init>(IIIIII)V

    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xc8

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;

    sget v3, Lcom/transsion/camera/R$drawable;->super_definition_200m_off:I

    sget v4, Lcom/transsion/camera/R$drawable;->ic_super_definition_50m_200m_off:I

    sget v5, Lcom/transsion/camera/R$drawable;->ic_super_definition_50m:I

    sget v6, Lcom/transsion/camera/R$drawable;->ic_super_definition_200m:I

    const/16 v1, 0x32

    const/16 v2, 0xc8

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionSettingUISpec$Info;-><init>(IIIIII)V

    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
