.class public final Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;
.super Ljava/lang/Object;
.source "RilIpv4AddrInfo.java"


# instance fields
.field public final clipV4:[B

.field public final dhcpV4:[B

.field public final gateV4:[B

.field public final netmaskV4:[B

.field public final pDnsV4:[B

.field public final sDnsV4:[B


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-array v0, v1, [B

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->clipV4:[B

    .line 6
    new-array v0, v1, [B

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->netmaskV4:[B

    .line 7
    new-array v0, v1, [B

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->gateV4:[B

    .line 8
    new-array v0, v1, [B

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->dhcpV4:[B

    .line 9
    new-array v0, v1, [B

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->pDnsV4:[B

    .line 10
    new-array v0, v1, [B

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->sDnsV4:[B

    .line 4
    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 15
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v10, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;>;"
    const-wide/16 v2, 0x10

    invoke-virtual {p0, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 86
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    .line 88
    .local v12, "_hidl_vec_size":I
    mul-int/lit8 v1, v12, 0x18

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    .line 89
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    .line 87
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v13

    .line 91
    .local v13, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 92
    const/4 v9, 0x0

    .local v9, "_hidl_index_0":I
    :goto_24
    if-ge v9, v12, :cond_37

    .line 93
    new-instance v11, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;

    invoke-direct {v11}, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;-><init>()V

    .line 94
    .local v11, "_hidl_vec_element":Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;
    mul-int/lit8 v1, v9, 0x18

    int-to-long v2, v1

    invoke-virtual {v11, p0, v13, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 95
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v9, v9, 0x1

    goto :goto_24

    .line 99
    .end local v11    # "_hidl_vec_element":Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;
    :cond_37
    return-object v10
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 10
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList",
            "<",
            "Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 158
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 159
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v0, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 160
    const-wide/16 v4, 0xc

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 161
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x18

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 162
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v1, 0x0

    .local v1, "_hidl_index_0":I
    :goto_1e
    if-ge v1, v2, :cond_2f

    .line 163
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;

    mul-int/lit8 v5, v1, 0x18

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 165
    :cond_2f
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 168
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 169
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    if-ne p0, p1, :cond_5

    .line 15
    return v4

    .line 17
    :cond_5
    if-nez p1, :cond_8

    .line 18
    return v3

    .line 20
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;

    if-eq v1, v2, :cond_11

    .line 21
    return v3

    :cond_11
    move-object v0, p1

    .line 23
    check-cast v0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;

    .line 24
    .local v0, "other":Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->clipV4:[B

    iget-object v2, v0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->clipV4:[B

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 25
    return v3

    .line 27
    :cond_1f
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->netmaskV4:[B

    iget-object v2, v0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->netmaskV4:[B

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 28
    return v3

    .line 30
    :cond_2a
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->gateV4:[B

    iget-object v2, v0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->gateV4:[B

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 31
    return v3

    .line 33
    :cond_35
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->dhcpV4:[B

    iget-object v2, v0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->dhcpV4:[B

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 34
    return v3

    .line 36
    :cond_40
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->pDnsV4:[B

    iget-object v2, v0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->pDnsV4:[B

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 37
    return v3

    .line 39
    :cond_4b
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->sDnsV4:[B

    iget-object v2, v0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->sDnsV4:[B

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 40
    return v3

    .line 42
    :cond_56
    return v4
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 48
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->clipV4:[B

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 49
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->netmaskV4:[B

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 50
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->gateV4:[B

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 51
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->dhcpV4:[B

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 52
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->pDnsV4:[B

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 53
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->sDnsV4:[B

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 47
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 16
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .prologue
    const-wide/16 v8, 0x1

    const/4 v6, 0x4

    .line 105
    const-wide/16 v4, 0x0

    add-long v0, p3, v4

    .line 106
    .local v0, "_hidl_array_offset_0":J
    const/4 v2, 0x0

    .local v2, "_hidl_index_0_0":I
    :goto_8
    if-ge v2, v6, :cond_16

    .line 107
    iget-object v3, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->clipV4:[B

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v3, v2

    .line 108
    add-long/2addr v0, v8

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 112
    :cond_16
    const-wide/16 v4, 0x4

    add-long v0, p3, v4

    .line 113
    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v6, :cond_29

    .line 114
    iget-object v3, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->netmaskV4:[B

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v3, v2

    .line 115
    add-long/2addr v0, v8

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 119
    :cond_29
    const-wide/16 v4, 0x8

    add-long v0, p3, v4

    .line 120
    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v6, :cond_3c

    .line 121
    iget-object v3, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->gateV4:[B

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v3, v2

    .line 122
    add-long/2addr v0, v8

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 126
    :cond_3c
    const-wide/16 v4, 0xc

    add-long v0, p3, v4

    .line 127
    const/4 v2, 0x0

    :goto_41
    if-ge v2, v6, :cond_4f

    .line 128
    iget-object v3, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->dhcpV4:[B

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v3, v2

    .line 129
    add-long/2addr v0, v8

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 133
    :cond_4f
    const-wide/16 v4, 0x10

    add-long v0, p3, v4

    .line 134
    const/4 v2, 0x0

    :goto_54
    if-ge v2, v6, :cond_62

    .line 135
    iget-object v3, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->pDnsV4:[B

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v3, v2

    .line 136
    add-long/2addr v0, v8

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 140
    :cond_62
    const-wide/16 v4, 0x14

    add-long v0, p3, v4

    .line 141
    const/4 v2, 0x0

    :goto_67
    if-ge v2, v6, :cond_75

    .line 142
    iget-object v3, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->sDnsV4:[B

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v3, v2

    .line 143
    add-long/2addr v0, v8

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 146
    :cond_75
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 77
    const-wide/16 v2, 0x18

    invoke-virtual {p1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 78
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 79
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string/jumbo v1, ".clipV4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->clipV4:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v1, ", .netmaskV4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->netmaskV4:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v1, ", .gateV4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->gateV4:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string/jumbo v1, ", .dhcpV4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->dhcpV4:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string/jumbo v1, ", .pDnsV4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->pDnsV4:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string/jumbo v1, ", .sDnsV4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->sDnsV4:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 14
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .prologue
    const-wide/16 v8, 0x1

    const/4 v6, 0x4

    .line 174
    const-wide/16 v4, 0x0

    add-long v0, p2, v4

    .line 175
    .local v0, "_hidl_array_offset_0":J
    const/4 v2, 0x0

    .local v2, "_hidl_index_0_0":I
    :goto_8
    if-ge v2, v6, :cond_15

    .line 176
    iget-object v3, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->clipV4:[B

    aget-byte v3, v3, v2

    invoke-virtual {p1, v0, v1, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 177
    add-long/2addr v0, v8

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 181
    :cond_15
    const-wide/16 v4, 0x4

    add-long v0, p2, v4

    .line 182
    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v6, :cond_27

    .line 183
    iget-object v3, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->netmaskV4:[B

    aget-byte v3, v3, v2

    invoke-virtual {p1, v0, v1, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 184
    add-long/2addr v0, v8

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 188
    :cond_27
    const-wide/16 v4, 0x8

    add-long v0, p2, v4

    .line 189
    const/4 v2, 0x0

    :goto_2c
    if-ge v2, v6, :cond_39

    .line 190
    iget-object v3, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->gateV4:[B

    aget-byte v3, v3, v2

    invoke-virtual {p1, v0, v1, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 191
    add-long/2addr v0, v8

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 195
    :cond_39
    const-wide/16 v4, 0xc

    add-long v0, p2, v4

    .line 196
    const/4 v2, 0x0

    :goto_3e
    if-ge v2, v6, :cond_4b

    .line 197
    iget-object v3, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->dhcpV4:[B

    aget-byte v3, v3, v2

    invoke-virtual {p1, v0, v1, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 198
    add-long/2addr v0, v8

    .line 196
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 202
    :cond_4b
    const-wide/16 v4, 0x10

    add-long v0, p2, v4

    .line 203
    const/4 v2, 0x0

    :goto_50
    if-ge v2, v6, :cond_5d

    .line 204
    iget-object v3, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->pDnsV4:[B

    aget-byte v3, v3, v2

    invoke-virtual {p1, v0, v1, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 205
    add-long/2addr v0, v8

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 209
    :cond_5d
    const-wide/16 v4, 0x14

    add-long v0, p2, v4

    .line 210
    const/4 v2, 0x0

    :goto_62
    if-ge v2, v6, :cond_6f

    .line 211
    iget-object v3, p0, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->sDnsV4:[B

    aget-byte v3, v3, v2

    invoke-virtual {p1, v0, v1, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 212
    add-long/2addr v0, v8

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    .line 215
    :cond_6f
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 149
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 150
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RilIpv4AddrInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 151
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 152
    return-void
.end method
