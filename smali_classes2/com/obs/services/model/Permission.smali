.class public final Lcom/obs/services/model/Permission;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PERMISSION_FULL_CONTROL:Lcom/obs/services/model/Permission;

.field public static final PERMISSION_FULL_CONTROL_OBJECT:Lcom/obs/services/model/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PERMISSION_READ:Lcom/obs/services/model/Permission;

.field public static final PERMISSION_READ_ACP:Lcom/obs/services/model/Permission;

.field public static final PERMISSION_READ_OBJECT:Lcom/obs/services/model/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PERMISSION_WRITE:Lcom/obs/services/model/Permission;

.field public static final PERMISSION_WRITE_ACP:Lcom/obs/services/model/Permission;


# instance fields
.field private permissionString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/obs/services/model/Permission;

    const-string v1, "FULL_CONTROL"

    invoke-direct {v0, v1}, Lcom/obs/services/model/Permission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/Permission;->PERMISSION_FULL_CONTROL:Lcom/obs/services/model/Permission;

    .line 31
    new-instance v0, Lcom/obs/services/model/Permission;

    const-string v1, "READ"

    invoke-direct {v0, v1}, Lcom/obs/services/model/Permission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/Permission;->PERMISSION_READ:Lcom/obs/services/model/Permission;

    .line 36
    new-instance v0, Lcom/obs/services/model/Permission;

    const-string v1, "WRITE"

    invoke-direct {v0, v1}, Lcom/obs/services/model/Permission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/Permission;->PERMISSION_WRITE:Lcom/obs/services/model/Permission;

    .line 41
    new-instance v0, Lcom/obs/services/model/Permission;

    const-string v1, "READ_ACP"

    invoke-direct {v0, v1}, Lcom/obs/services/model/Permission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/Permission;->PERMISSION_READ_ACP:Lcom/obs/services/model/Permission;

    .line 46
    new-instance v0, Lcom/obs/services/model/Permission;

    const-string v1, "WRITE_ACP"

    invoke-direct {v0, v1}, Lcom/obs/services/model/Permission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/Permission;->PERMISSION_WRITE_ACP:Lcom/obs/services/model/Permission;

    .line 52
    new-instance v0, Lcom/obs/services/model/Permission;

    const-string v1, "READ_OBJECT"

    invoke-direct {v0, v1}, Lcom/obs/services/model/Permission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/Permission;->PERMISSION_READ_OBJECT:Lcom/obs/services/model/Permission;

    .line 58
    new-instance v0, Lcom/obs/services/model/Permission;

    const-string v1, "FULL_CONTROL_OBJECT"

    invoke-direct {v0, v1}, Lcom/obs/services/model/Permission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/obs/services/model/Permission;->PERMISSION_FULL_CONTROL_OBJECT:Lcom/obs/services/model/Permission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/obs/services/model/Permission;->permissionString:Ljava/lang/String;

    return-void
.end method

.method public static parsePermission(Ljava/lang/String;)Lcom/obs/services/model/Permission;
    .registers 3

    .line 81
    sget-object v0, Lcom/obs/services/model/Permission;->PERMISSION_FULL_CONTROL:Lcom/obs/services/model/Permission;

    invoke-virtual {v0}, Lcom/obs/services/model/Permission;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    .line 83
    :cond_d
    sget-object v0, Lcom/obs/services/model/Permission;->PERMISSION_READ:Lcom/obs/services/model/Permission;

    invoke-virtual {v0}, Lcom/obs/services/model/Permission;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return-object v0

    .line 85
    :cond_1a
    sget-object v0, Lcom/obs/services/model/Permission;->PERMISSION_WRITE:Lcom/obs/services/model/Permission;

    invoke-virtual {v0}, Lcom/obs/services/model/Permission;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    return-object v0

    .line 87
    :cond_27
    sget-object v0, Lcom/obs/services/model/Permission;->PERMISSION_READ_ACP:Lcom/obs/services/model/Permission;

    invoke-virtual {v0}, Lcom/obs/services/model/Permission;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    return-object v0

    .line 89
    :cond_34
    sget-object v0, Lcom/obs/services/model/Permission;->PERMISSION_WRITE_ACP:Lcom/obs/services/model/Permission;

    invoke-virtual {v0}, Lcom/obs/services/model/Permission;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    return-object v0

    .line 91
    :cond_41
    sget-object v0, Lcom/obs/services/model/Permission;->PERMISSION_READ_OBJECT:Lcom/obs/services/model/Permission;

    invoke-virtual {v0}, Lcom/obs/services/model/Permission;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    return-object v0

    .line 93
    :cond_4e
    sget-object v0, Lcom/obs/services/model/Permission;->PERMISSION_FULL_CONTROL_OBJECT:Lcom/obs/services/model/Permission;

    invoke-virtual {v0}, Lcom/obs/services/model/Permission;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    return-object v0

    .line 96
    :cond_5b
    new-instance v0, Lcom/obs/services/model/Permission;

    invoke-direct {v0, p0}, Lcom/obs/services/model/Permission;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 106
    instance-of v0, p1, Lcom/obs/services/model/Permission;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/obs/services/model/Permission;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public getPermissionString()Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/obs/services/model/Permission;->permissionString:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 110
    iget-object p0, p0, Lcom/obs/services/model/Permission;->permissionString:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/obs/services/model/Permission;->permissionString:Ljava/lang/String;

    return-object p0
.end method
