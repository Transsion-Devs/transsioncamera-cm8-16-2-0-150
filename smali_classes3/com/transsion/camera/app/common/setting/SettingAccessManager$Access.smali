.class public Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/setting/SettingAccessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Access"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mValid:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmName(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minvalidate(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->invalidate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mvalidate(Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->validate()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/setting/SettingAccessManager;Ljava/lang/String;)V
    .registers 3

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->mName:Ljava/lang/String;

    return-void
.end method

.method private invalidate()V
    .registers 2

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->mValid:Z

    return-void
.end method

.method private validate()V
    .registers 2

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->mValid:Z

    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 1

    .line 151
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/setting/SettingAccessManager$Access;->mValid:Z

    return p0
.end method
