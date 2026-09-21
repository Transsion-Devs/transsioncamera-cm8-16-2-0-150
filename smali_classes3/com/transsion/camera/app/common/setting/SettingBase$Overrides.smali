.class Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/setting/SettingBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Overrides"
.end annotation


# instance fields
.field public entryValues:Ljava/util/List;

.field public headerKey:Ljava/lang/String;

.field public value:Ljava/lang/String;

.field public valueWhenOverride:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/setting/SettingBase;)V
    .registers 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/setting/SettingBase;Lcom/transsion/camera/app/common/setting/SettingBase-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;-><init>(Lcom/transsion/camera/app/common/setting/SettingBase;)V

    return-void
.end method
