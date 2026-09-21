.class Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/setting/SettingBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverridesList"
.end annotation


# instance fields
.field private mOverriders:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method static bridge synthetic -$$Nest$mclearAll(Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->clearAll()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mindexOf(Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;Ljava/lang/String;)I
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->indexOf(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private constructor <init>(Lcom/transsion/camera/app/common/setting/SettingBase;)V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->mOverriders:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/setting/SettingBase;Lcom/transsion/camera/app/common/setting/SettingBase-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;-><init>(Lcom/transsion/camera/app/common/setting/SettingBase;)V

    return-void
.end method

.method private clearAll()V
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->mOverriders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method private indexOf(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 118
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->mOverriders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 119
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->mOverriders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;

    .line 120
    iget-object v1, v1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->headerKey:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return v0

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public add(Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;)V
    .registers 4

    .line 59
    iget-object v0, p1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->headerKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    .line 61
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->mOverriders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;

    .line 62
    iget-object v1, v1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->valueWhenOverride:Ljava/lang/String;

    iput-object v1, p1, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;->valueWhenOverride:Ljava/lang/String;

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->mOverriders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 65
    :cond_1b
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->mOverriders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public get(I)Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;
    .registers 2

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->mOverriders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;

    return-object p0
.end method

.method public getFirst()Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->mOverriders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 95
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->mOverriders:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/SettingBase$Overrides;

    return-object p0
.end method

.method public remove(Ljava/lang/String;)I
    .registers 3

    .line 78
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->mOverriders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    :cond_c
    return p1
.end method

.method public size()I
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase$OverridesList;->mOverriders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    return p0
.end method
